(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[41],{"524b":function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("q-page",{staticClass:"q-pb-lg"},[a("q-header",{staticClass:"text-primary bg-white"},[a("q-toolbar",[a("q-btn",{directives:[{name:"go-back",rawName:"v-go-back.single",modifiers:{single:!0}}],attrs:{flat:"",round:"",dense:"",icon:"arrow_back"}}),a("q-toolbar-title",{staticClass:"text-weight-bold brand"},[t._v("Tracking Order")]),a("q-btn",{attrs:{flat:"",label:"Cari Produk",to:{name:"ProductSearch"}}})],1)],1),a("div",{staticClass:"col bg-white border q-ma-md"},[a("q-input",{ref:"input",attrs:{outlined:"",dense:"",color:"grey-2",autofocus:"",placeholder:"ketik Invoice ID atau Nomor Whatsapp"},on:{keyup:function(e){return!e.type.indexOf("key")&&t._k(e.keyCode,"enter",13,e.key,"Enter")?null:t.searchOrder(e)}},scopedSlots:t._u([{key:"append",fn:function(){return[a("q-icon",{staticClass:"cursor-pointer",attrs:{name:"search"},on:{click:t.searchOrder}})]},proxy:!0}]),model:{value:t.search,callback:function(e){t.search=e},expression:"search"}})],1),a("div",{staticClass:"q-mt-lg"},[t.orders.length?[a("div",{staticClass:"bg-white"},[a("q-list",{attrs:{separator:""}},[a("q-item",[a("q-item-section",{staticClass:"xs-hide",attrs:{side:""}},[t._v("\n         #\n        ")]),a("q-item-section",[a("q-item-label",[t._v("Detail")])],1),a("q-item-section",{staticClass:"xs-hide"},[a("q-item-label",[t._v("Status")])],1),a("q-item-section",{attrs:{side:""}},[t._v("\n          Actions\n        ")])],1),t._l(t.orders,(function(e,s){return a("q-item",{key:e.id},[a("q-item-section",{staticClass:"xs-hide",attrs:{side:"",top:""}},[t._v("\n          "+t._s(s+1)+"\n        ")]),a("q-item-section",{attrs:{top:""}},[a("div",{staticClass:"text-xs"},[a("table",{staticClass:"dense"},[a("tr",[a("td",[t._v("INVOICE")]),a("td",[t._v(t._s(e.order_ref))])]),a("tr",[a("td",[t._v("Nama")]),a("td",[t._v(t._s(e.customer_name))])]),a("tr",[a("td",[t._v("WA")]),a("td",[t._v(t._s(e.customer_whatsapp))])]),a("tr",[a("td",[t._v("Total")]),a("td",[t._v(t._s(t.moneyIDR(e.order_total)))])]),a("tr",[a("td",[t._v("Dibuat")]),a("td",[t._v(t._s(e.created_at))])]),a("tr",{staticClass:"sm-hide md-hide lg-hide"},[a("td",[t._v("Status")]),a("td",[a("div",[a("q-badge",{attrs:{color:t.changeBadgeColor(e.order_status)}},[t._v(t._s(e.status_label))])],1)])])])])]),a("q-item-section",{staticClass:"xs-hide"},[a("q-item-label",[a("q-badge",{attrs:{color:t.changeBadgeColor(e.order_status)}},[t._v(t._s(e.status_label))])],1)],1),a("q-item-section",{attrs:{side:""}},[a("div",{staticClass:"column q-gutter-y-sm"},[a("q-btn",{attrs:{"no-caps":"",size:"sm",label:"Detail",color:"purple-7",to:{name:"UserInvoice",params:{order_ref:e.order_ref}}}})],1)])],1)}))],2)],1)]:t._e(),t.notAvailable?[a("div",{staticClass:"q-pt-xl text-center"},[t._v("Data tidak ditemukan")])]:t._e()],2),a("q-inner-loading",{attrs:{showing:t.loading}},[a("q-spinner-facebook",{attrs:{size:"50px",color:"primary"}})],1)],1)},r=[],i=(a("ac1f"),a("841c"),a("758b")),n={name:"SearchOrder",data:function(){return{loading:!1,search:"",orders:[],ready:!0,notAvailable:!1}},methods:{searchOrder:function(){var t=this;this.$refs.input.blur(),this.notAvailable=!1,this.loading=!0,(this.search||""!=this.search)&&Object(i["a"])().post("searchOrder",{key:this.search}).then((function(e){t.search="",200==e.status&&(t.orders=e.data.results,t.orders.length||(t.notAvailable=!0)),t.loading=!1})).catch((function(){t.loading=!1}))},changeBadgeColor:function(t){return"PAID"==t||"SHIPPING"==t?"green-7":"PROCESS"==t?"blue-7":"UNPAID"==t?"grey-6":"grey-7"},money:function(t){return new Intl.NumberFormat("id-ID",{style:"currency",currency:"IDR"}).format(t)}}},o=n,c=a("2877"),l=a("9989"),d=a("e359"),u=a("65c6"),m=a("9c40"),h=a("6ac5"),b=a("27f9"),_=a("0016"),p=a("1c1c"),v=a("66e5"),g=a("4074"),q=a("0170"),f=a("58a81"),k=a("74f7"),C=a("e669"),y=a("2eeb"),I=a("eebe"),w=a.n(I),x=Object(c["a"])(o,s,r,!1,null,null,null);e["default"]=x.exports;w()(x,"components",{QPage:l["a"],QHeader:d["a"],QToolbar:u["a"],QBtn:m["a"],QToolbarTitle:h["a"],QInput:b["a"],QIcon:_["a"],QList:p["a"],QItem:v["a"],QItemSection:g["a"],QItemLabel:q["a"],QBadge:f["a"],QInnerLoading:k["a"],QSpinnerFacebook:C["a"]}),w()(x,"directives",{GoBack:y["a"]})}}]);