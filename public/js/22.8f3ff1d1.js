(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[22],{"8ee8":function(t,e,a){"use strict";a.r(e);var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("q-page",{class:{"flex flex-center":!t.categories.available}},[a("q-header",[a("q-toolbar",[a("q-btn",{attrs:{to:{name:"Settings"},flat:"",round:"",dense:"",icon:"arrow_back"}}),a("q-toolbar-title",[t._v("\n       Kelola Kategori\n      ")]),a("q-btn",{staticClass:"gt-xs",attrs:{flat:"",label:"Tambah Kategori","no-caps":"",icon:"add_circle",to:{name:"CategoryForm"}}})],1)],1),t.categories.available?[a("div",{staticClass:"q-py-md"},[a("q-list",{attrs:{separator:""}},[a("q-item",[a("q-item-section",{attrs:{avatar:""}},[t._v("\n         Ikon\n        ")]),a("q-item-section",[t._v("\n          Label\n        ")]),a("q-item-section",[t._v("\n          Urutan\n        ")]),a("q-item-section",[t._v("\n          Listing\n        ")]),a("q-item-section",{attrs:{side:""}},[t._v("\n          Aksi\n        ")])],1),t._l(t.categories.data,(function(e){return a("q-item",{key:e.id},[a("q-item-section",{attrs:{avatar:""}},[a("q-img",{attrs:{src:e.src,ratio:"1"}})],1),a("q-item-section",[a("q-item-label",[t._v(t._s(e.title))])],1),a("q-item-section",[a("div",{staticClass:"q-pa-md"},[t._v(t._s(e.weight))])]),a("q-item-section",[a("div",[a("q-chip",{attrs:{size:"sm",color:e.is_front?"positive":"grey","text-color":"white",icon:"check_circle"}},[t._v("\n            "+t._s(e.is_front?"Yes":"No")+"\n          ")])],1)]),a("q-item-section",{attrs:{side:""}},[a("div",{staticClass:"text-grey-8 q-gutter-xs column"},[a("q-btn",{attrs:{size:"sm",round:"",icon:"delete",glossy:"",color:"red"},on:{click:function(a){return t.remove(e.id)}}}),a("q-btn",{attrs:{to:{name:"CategoryForm",query:{edit:e.id}},size:"sm",round:"",icon:"edit",glossy:"",color:"info"}})],1)])],1)}))],2)],1)]:[a("div",[t._v("Tidak ada data")])],a("q-inner-loading",{attrs:{showing:!t.categories.ready}},[a("q-spinner-facebook",{attrs:{size:"50px",color:"primary"}})],1),a("q-page-sticky",{staticClass:"lt-sm",attrs:{position:"bottom-right",offset:[18,18]}},[a("q-btn",{attrs:{glossy:"",fab:"",icon:"add",color:"primary",to:{name:"CategoryForm"}}})],1)],2)},o=[],n=a("ded3"),s=a.n(n),r=a("2f62"),c={name:"Categories",data:function(){return{modal:!1,removeId:null}},computed:s()({},Object(r["e"])({categories:function(t){return t.category.categories}})),methods:s()(s()({},Object(r["b"])("category",["getCategories","categoryDelete"])),{},{remove:function(t){var e=this;this.removeId=t,this.$q.dialog({title:"Konfirmasi Penghapusan Item",message:"Yakin akan menghapus data?",ok:{label:"Hapus",flat:!0,"no-caps":!0},cancel:{label:"Batal",flat:!0,"no-caps":!0}}).onOk((function(){e.categoryDelete(e.removeId)})).onCancel((function(){console.log("Cancel")})).onDismiss((function(){}))}}),created:function(){this.categories.data.length||this.getCategories()}},l=c,m=a("2877"),d=a("9989"),g=a("e359"),u=a("65c6"),q=a("9c40"),b=a("6ac5"),f=a("1c1c"),p=a("66e5"),v=a("4074"),_=a("068f"),h=a("b047"),y=a("0170"),k=a("74f7"),C=a("e669"),Q=a("de5e"),w=a("eebe"),I=a.n(w),x=Object(m["a"])(l,i,o,!1,null,null,null);e["default"]=x.exports;I()(x,"components",{QPage:d["a"],QHeader:g["a"],QToolbar:u["a"],QBtn:q["a"],QToolbarTitle:b["a"],QList:f["a"],QItem:p["a"],QItemSection:v["a"],QImg:_["a"],QChip:h["a"],QItemLabel:y["a"],QInnerLoading:k["a"],QSpinnerFacebook:C["a"],QPageSticky:Q["a"]})}}]);