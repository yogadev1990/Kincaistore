<template>
  <div>
    <div class="text-h6">Pilih Metode Pembayaran</div>
    <div class="text-caption">Pilih metode pembayaran yang anda inginkan</div>
    <div class="q-mt-md">
      <q-card class="bg-white shadow" square>
        <div class="card-heading border-b">Informasi Pembayaran</div>
        <q-card-section>
          <table class="dense">
            <tr>
              <td>Info</td>
              <td>:</td>
              <td>{{ transaction.payment_method.split('_').join(' ') }}</td>
            </tr>
            <tr>
              <td style="vertical-align:top;">Detil</td>
              <td style="vertical-align:top;">:</td>
              <td><div v-html="transaction.payment_name"></div></td>
            </tr>
            <tr>
              <td>Referensi</td>
              <td>:</td>
              <td>{{ transaction.payment_ref }}</td>
            </tr>
          </table>
        </q-card-section>
      </q-card>
    </div>
    <div class="q-mt-md">
      <div class="text-h6">Pilih Metode Pembayaran</div>
      <div class="text-caption">Pilih metode pembayaran yang anda inginkan</div>
      <div class="q-mt-md">
        <q-card class="bg-white shadow" square>
          <div class="card-heading border-b">Pilih Metode Pembayaran</div>
          <q-card-section>
            <div class="text-grey-9">
              <div class="q-mb-md">
                <q-radio v-model="selected" val="direct">Transfer Bank</q-radio>
              </div>
              <div class="q-mb-md">
                <q-radio v-model="selected" val="gateway">Gateway Pembayaran</q-radio>
              </div>
            </div>
          </q-card-section>
        </q-card>
      </div>
      <div class="q-mt-md">
        <div v-if="selected == 'direct'">
          <DirectPayment :transaction="transaction" />
        </div>
        <div v-else-if="selected == 'gateway'">
          <PaymentGateway :transaction="transaction" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import PaymentGateway from './PaymentGateway.vue'
import DirectPayment from './DirectPayment.vue'
export default {
  props: ['transaction'],
   components: { PaymentGateway, DirectPayment },

}
</script>
