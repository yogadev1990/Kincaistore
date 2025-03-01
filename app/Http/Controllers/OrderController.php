<?php

namespace App\Http\Controllers;

use Tripay;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Order;
use App\Models\Config;
use App\Models\Product;
use App\Models\OrderItem;
use App\Models\Transaction;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use App\Models\ProductVariantValue;

class OrderController extends Controller
{
    protected $config;
    public function __construct()
    {
        $this->config =  Config::first();
    }
    public function index(Request $request)
    {
        return response([
            'success' => true,
            'results' => $this->getOrders($request)
        ]);
    }
    public function getCustomerOrders(Request $request)
    {
        $take = $request->take ?? 4;

        $user = $request->user();

        return response([
            'success' => true,
            'results' => $request->skip ? Order::with('transaction')->latest()->where('user_id', $user->id)->skip($request->skip)->take($take)->get() : Order::with('transaction')->where('user_id', $user->id)->latest()->take($take)->get()
        ]);
    }

    public function store(Request $request)
    {

        $user = null;
        if($request->user_id) {
            $user = User::find($request->user_id);
        }


        $request->validate([
            'customer_name' => ['required', 'string'],
            'customer_whatsapp' => ['required', 'string'],
            'customer_email' => ['required', 'email'],
            'payment_method' => ['required', 'string'],
            'payment_type' => ['required', 'string'],
            'payment_name' => ['required', 'string'],
            'address' => ['required', 'string'],
            'items' => ['required', 'array'],
            'quantity' => ['required', 'numeric'],
            'subtotal' => ['required', 'numeric'],
            'total' => ['required', 'numeric'],
        ]);
        $name = strip_tags($request->customer_name);
        $whatsapp = strip_tags($request->customer_whatsapp);

        $uniqueCode = rand(56, 259);
        $orderRef = 'INV-' . rand(208, 5909). Str::upper(Str::random(5));

        DB::beginTransaction();

        try {
            $order = Order::create([
                'user_id' => $user? $user->id : null,
                'order_ref' => $orderRef,
                'customer_name' => $name,
                'customer_whatsapp' => $whatsapp,
                'customer_email' => $request->customer_email,
                'shipping_address' => $request->address,
                'order_qty' => $request->quantity,
                'order_weight' => $request->weight,
                'order_unique_code' => $request->payment_type == 'DIRECT' ? $uniqueCode : 0,
                'order_subtotal' => $request->subtotal,
                'order_total' => $request->payment_type == 'DIRECT' ? $request->total : $request->total,
                'order_status' => 'UNPAID',
                'shipping_courier_name' => $request->shipping_courier_name,
                'shipping_courier_service' => $request->shipping_courier_service,
                'shipping_cost' => $request->shipping_cost,
            ]);
                
            foreach($request->items as $item) {
                $order->items()->create([
                    'sku' => $item['sku'],
                    'name' => $item['name'],
                    'product_id' => $item['product_id'],
                    'quantity' => $item['quantity'],
                    'price' => $item['price'],
                    'note' => $item['note']
                ]);

                $productData = Product::where('sku', $item['sku'])->first();
                if($productData) {

                    $productData->stock -= $item['quantity'];
                    $productData->save();

                } else {

                    $variantData = ProductVariantValue::where('item_sku',$item['sku'])->first();
                    if($variantData) {
                        $variantData->item_stock -= $item['quantity'];
                        $variantData->save();
                    }
                }
            }



            if($request->payment_type == 'DIRECT' || $request->payment_type == 'COD') {
  
                $transaction = new Transaction();
    
                $transaction->order_id = $order->id;
                $transaction->payment_type = $request->payment_type;
                $transaction->payment_method = $request->payment_method;
                $transaction->payment_code = $request->payment_code;
                $transaction->payment_name = $request->payment_name;
                $transaction->amount = $order->order_total;
    
                $transaction->payment_ref = 'DTR-' .Str::upper(Str::random(8)) . $order->id;
                $transaction->expired_time = Carbon::now()->addDays(2)->timestamp;;
                $transaction->total_fee = 0;
                $transaction->amount_received = 0;
    
                $transaction->save();

                DB::commit();
    
                return response([
                    'success' => true,
                    'results' => $order->load('items','transaction')
                ], 200);

            } else {

                $payload = [
                    'method'            => $request->payment_method,
                    'merchant_ref'      => $order->order_ref,
                    'amount'            => $order->order_total,
                    'customer_name'     => $order->customer_name,
                    'customer_email'    => $order->customer_email,
                    'customer_phone'    => $order->customer_whatsapp,
                    'order_items'       => $request->items,
                ];

                $json = Tripay::createTransaction($payload);

                $obj = json_decode($json);


                if($obj->success) {

                    $transaction = new Transaction();

                    $transaction->order_id = $order->id;
                    $transaction->payment_type = $request->payment_type;
                    $transaction->payment_method = $request->payment_method;
                    $transaction->payment_name = $request->payment_name;
    
                    $transaction->qr_url = $obj->data->qr_url ?? '';
                    
                    $transaction->payment_code = $obj->data->pay_code ?? '';
                    $transaction->payment_ref = $obj->data->reference;
                    $transaction->expired_time = $obj->data->expired_time;

                    $transaction->amount = $obj->data->amount;
                    $transaction->total_fee = $obj->data->total_fee;
                    $transaction->amount_received = $obj->data->amount_received;
                    $transaction->instructions = json_encode($obj->data->instructions);

                    $transaction->save();

                    DB::commit();

                    return response([
                        'success' => true,
                        'results' => $order->load('transaction', 'items'),
                    ], 200);
                        

                } else {
                    DB::rollBack();

                    return response([
                        'success' => false,
                        'results' => null
                    ], 400);
                }
            }

        } catch (\Throwable $th) {

            // DB::rollBack();

            return response([
                'success' => false,
                'results' => null,
                'error' => $th->getMessage()
            ], 400);
        }        
        
    }

    public function show($orderRef)
    {
        $order = Order::where('order_ref', $orderRef)->firstOrFail();

        return response([
            'success' => true,
            'results' => $order->load('items', 'transaction')
        ]);
    }

    public function destroy($id)
    {
        $order = Order::find($id);

        if($order) {
            $order->delete();

            return response([
                'success' => true
            ], 200);
        }
    }
    public function paymentAccepted($id)
    {
        $order = Order::find($id);
        $transaction = $order->transaction;

        $order->order_status = 'PROCESS';
        $order->save();

        $transaction->status = 'PAID';
        $transaction->paid_at = now();
        $transaction->save();

        foreach($order->items as $item) {
           DB::table('products')->where('id', $item->product_id)->decrement('stock', $item->quantity);
        }

        return response([
            'success' => true
        ], 200);
    }
    public function filterOrder(Request $request)
    {
        $request->validate([
            'filter' => ['required', 'string']
        ]);

        $skip = $request->skip?? 0;

        return response()->json([
            'success' => true,
            'results' => Order::with('items.product')->where('order_status', $request->filter)->orderByDesc('updated_at')->skip($skip)->take(4)->get()
        ], 200);
    }
    public function searchOrder(Request $request)
    {
        $request->validate([
            'key' => ['required', 'string']
        ]);
        $q = strip_tags($request->key);
        $q = trim($q);

        return response()->json([
            'success' => true,
            'results' => Order::with('items.product')->where('customer_whatsapp', $q)->orWhere('order_ref', $q)->orderByDesc('updated_at')->get()
        ], 200);
    }
    public function searchAdminOrder(Request $request)
    {
        $request->validate([
            'key' => ['required', 'string']
        ]);
        $q = strip_tags($request->key);
        $q = trim($q);

        return response()->json([
            'success' => true,
            'results' => Order::with('transaction')->where('customer_whatsapp', 'like', '%'.$q .'%')->orWhere('order_ref', 'like', '%'.$q .'%')->orderByDesc('updated_at')->get()
        ], 200);
    }
    public function inputResi(Request $request)
    {
        $request->validate([
            'order_id' => ['required'],
            'resi' => ['required'],
        ]);
        $order = Order::findOrFail($request->order_id);

        $order->shipping_courier_code = $request->resi;
        $order->shipping_delivered = now();
        $order->order_status = 'SHIPPING';

        $order->save();

        return response([
            'success' => true
        ], 200);
    }

    protected function getOrders($request) 
    {
        $search = $request->query('search') ?? null;
        $filter = $request->query('filter') ?? null;
        $skip = $request->query('skip')?? 0;
        $take = $request->query('take')?? 4;

        if($search) {
            return Order::with('transaction')->where('customer_whatsapp', $search)->orWhere('order_ref', $search)->orderByDesc('updated_at')->get();
        }
        if($filter && $filter != 'ALL') {
            return Order::with('transaction')->where('order_status', $filter)->orderByDesc('updated_at')->skip($skip)->take($take)->get();
        }

        return Order::with('transaction')->latest()->skip($skip)->take($take)->get();

    }

    public function getRandomOrder()
    {
        return response()->json([
            'results' => OrderItem::with('images', 'order:id,customer_name,created_at')->inRandomOrder()->take(20)->get()
        ], 200);
    }
    public function updateStatusOrder(Request $request)
    {
        $request->validate([
            'order_id' => 'required',
            'status' => 'required',
        ]);

        $order = Order::find($request->order_id);
        $order->order_status = $request->status;

        $order->save();

        if($order->shipping_courier_name == 'COD' && $request->status == 'COMPLETE') {

            $order->transaction()->update([
                'status' => 'PAID'
            ]);

        }

        Order::where('id', $request->order_id)->update([
            'order_status' => $request->status
        ]);

        return response()->json([
            'success' => true
        ], 200);
    }
    
}
