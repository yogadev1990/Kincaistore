(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[6],{9962:function(t,e,o){"use strict";o("ea39")},cb1c:function(t,e,o){"use strict";o.r(e);var a=function(){var t=this,e=t._self._c;return e("q-page",{staticClass:"q-pb-xl q-pt-sm",class:{"flex flex-center":!t.products.available}},[e("q-header",{staticClass:"text-primary bg-white"},[e("q-toolbar",[e("q-btn",{attrs:{flat:"",round:"",dense:"",icon:"arrow_back"},on:{click:t.backButton}}),e("q-toolbar-title",{staticClass:"text-weight-bold brand"},[t._v(t._s(t.title))]),e("shopping-cart")],1)],1),t.products.available?[e("product-section",{attrs:{title:"Produk Katalog",products:t.products}})]:t._e(),t.products.available?t._e():[e("div",{staticClass:"column items-center"},[e("p",{staticClass:"text-grey-8 text-weight-bold text-center"},[t._v("Tidak ada produk yang ditemukan")]),e("q-btn",{attrs:{to:{name:"ProductIndex"},rounded:"","text-color":"white",color:"dark",icon:"keyboard_backspace",label:"kembali","no-caps":""}})],1)]],2)},i=[],r=o("ded3"),s=o.n(r),n=(o("a4d3"),o("e01a"),o("7db0"),o("14d9"),o("e9f5"),o("f665"),o("d3b7"),o("2f62")),c=o("53a2"),d=o("c6c8"),u={name:"ProductCategory",components:{ProductSection:c["a"],ShoppingCart:d["a"]},data:function(){return{likes:[],description:this.$store.state.meta.description,shop:this.$store.state.shop}},computed:{favorites:function(){return this.$store.state.product.favorites},products:function(){return this.$store.state.product.productByCategory},categories:function(){return this.$store.state.category.categories},title:function(){return this.$store.state.meta.title}},methods:s()(s()({},Object(n["b"])("product",["getProductsByCategory"])),{},{backButton:function(){window.history.length>2?window.history.back():this.$router.push({name:"ProductIndex"})},getCategoryTitle:function(){var t=this;if(this.categories.data.length){var e=this.categories.data.find((function(e){return e.id==t.$route.params.id}));void 0!=e&&this.$store.commit("SET_META_TITLE",e.title)}}}),mounted:function(){this.getCategoryTitle()},created:function(){this.products.data.length?this.products.data[0].id!=this.$route.params.id&&(this.$store.commit("product/CLEAR_PRODUCT_CATEGORY"),this.getProductsByCategory(this.$route.params.id)):(this.$store.commit("product/CLEAR_PRODUCT_CATEGORY"),this.getProductsByCategory(this.$route.params.id))},meta:function(){var t;return{title:this.title,meta:{description:{name:"description",content:this.description},ogDescription:{name:"og:description",content:this.description},ogTitle:{name:"og:title",content:this.title},ogUrl:{name:"og:url",content:location.href},ogImage:{name:"og:image",content:null!==(t=this.shop)&&void 0!==t&&t.logo?this.shop.logo:""}}}}},l=u,p=(o("9962"),o("2877")),h=o("9989"),g=o("e359"),m=o("65c6"),b=o("9c40"),f=o("6ac5"),C=o("8572"),y=o("eebe"),k=o.n(y),v=Object(p["a"])(l,a,i,!1,null,null,null);e["default"]=v.exports;k()(v,"components",{QPage:h["a"],QHeader:g["a"],QToolbar:m["a"],QBtn:b["a"],QToolbarTitle:f["a"],QField:C["a"]})},ea39:function(t,e,o){}}]);