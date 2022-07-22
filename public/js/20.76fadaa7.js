(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[20],{bf40:function(t,e,a){"use strict";a.r(e);var i=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("q-page",{},[a("q-header",[a("q-toolbar",[a("q-btn",{directives:[{name:"go-back",rawName:"v-go-back.single",modifiers:{single:!0}}],attrs:{flat:"",round:"",dense:"",icon:"arrow_back"}}),a("q-toolbar-title",[t._v("\n       Edit Kategori\n      ")])],1)],1),a("div",{staticClass:"q-pa-md q-gutter-y-md"},[a("q-input",{attrs:{filled:"",label:"Title"},model:{value:t.form.title,callback:function(e){t.$set(t.form,"title",e)},expression:"form.title"}}),a("q-input",{attrs:{filled:"",type:"number",label:"Urutan",rules:[function(t){return t&&t>0||"Data tidak boleh kosong"}]},model:{value:t.form.weight,callback:function(e){t.$set(t.form,"weight",e)},expression:"form.weight"}}),t.errors.title?a("div",{staticClass:"text-xs text-red q-my-md"},[t._v(" "+t._s(t.errors.title[0]))]):t._e(),a("div",{staticClass:"border rounded q-pa-sm"},[a("div",[a("q-checkbox",{attrs:{label:"Tampilkan produk di beranda"},model:{value:t.form.is_front,callback:function(e){t.$set(t.form,"is_front",e)},expression:"form.is_front"}}),a("div",{staticClass:"text-xs text-grey-6 q-pa-xs"},[t._v("\n          Pilihan apakah produk dibawah kategori ini akan di listing di halaman beranda\n        ")])],1)]),a("div",[a("q-btn",{staticClass:"mt-2 mr-2",attrs:{label:"Upload Gambar Kategori",size:"sm",color:"primary",icon:"upload",type:"button"},on:{click:function(e){return e.preventDefault(),t.selectNewImage(e)}}}),t.errors.images?a("div",{staticClass:"text-xs text-red q-my-md"},[t._v(" "+t._s(t.errors.images[0]))]):t._e()],1),a("div",[a("input",{ref:"image",staticClass:"hidden",attrs:{type:"file",multiple:""},on:{change:t.updateImagePreview}}),t.imagePreview?a("q-list",[a("q-item",[a("q-item-section",[a("img",{staticClass:"shadow-4 q-pa-xs bg-white",staticStyle:{width:"100px",height:"70px","object-fit":"cover"},attrs:{src:t.imagePreview}})]),a("q-space"),a("q-item-section",{attrs:{side:""}},[a("q-btn",{attrs:{size:"sm",color:"red",glossy:"",round:"",icon:"delete"},on:{click:t.removeImage}})],1)],1)],1):t._e()],1)],1),a("q-footer",[a("q-btn",{staticClass:"full-width",attrs:{loading:t.loading,label:"Simpan"},on:{click:t.submit}},[a("q-tooltip",{staticClass:"bg-accent"},[t._v("Simpan")])],1)],1)],1)},r=[],s=a("ded3"),o=a.n(s),n=a("2f62"),l={data:function(){return{category:this.$store.getters["category/getById"](parseInt(this.$route.params.id)),form:{id:"",images:"",title:"",is_front:!0,weight:0,remone_banner:!1},modal:!1,imagePreview:""}},computed:o()({},Object(n["e"])({loading:function(t){return t.loading},errors:function(t){return t.errors}})),methods:o()(o()({},Object(n["b"])("category",["categoryUpdate","getCategories","getCategory"])),{},{submit:function(){var t=new FormData;t.append("_method","PUT"),t.append("title",this.form.title),t.append("images",this.form.images),t.append("weight",this.form.weight),t.append("is_front",1==this.form.is_front?1:0),this.categoryUpdate({id:this.form.id,data:t})},selectNewImage:function(){this.$refs.image.click()},removeImage:function(){this.imagePreview=""},updateImagePreview:function(){var t=this;this.form.images=this.$refs.image.files[0];var e=new FileReader;e.onload=function(e){t.imagePreview=e.target.result},e.readAsDataURL(this.$refs.image.files[0])},setData:function(){this.form.id=this.category.id,this.form.title=this.category.title,this.form.weight=this.category.weight,this.form.is_front=1==this.category.is_front,this.form.is_special=1==this.category.is_special,this.imagePreview=this.category.src}}),created:function(){var t=this;this.category?this.setData():this.getCategory(this.$route.params.id).then((function(e){t.category=e.data.results,t.setData()}))}},c=l,m=a("2877"),d=a("9989"),g=a("e359"),f=a("65c6"),h=a("9c40"),u=a("6ac5"),p=a("27f9"),b=a("8f8e"),v=a("1c1c"),w=a("66e5"),y=a("4074"),q=a("2c91"),_=a("7ff0"),k=a("05c0"),x=a("2eeb"),C=a("eebe"),Q=a.n(C),I=Object(m["a"])(c,i,r,!1,null,null,null);e["default"]=I.exports;Q()(I,"components",{QPage:d["a"],QHeader:g["a"],QToolbar:f["a"],QBtn:h["a"],QToolbarTitle:u["a"],QInput:p["a"],QCheckbox:b["a"],QList:v["a"],QItem:w["a"],QItemSection:y["a"],QSpace:q["a"],QFooter:_["a"],QTooltip:k["a"]}),Q()(I,"directives",{GoBack:x["a"]})}}]);