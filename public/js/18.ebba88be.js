(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[18],{"0c81":function(t,a,s){"use strict";s.r(a);var e=function(){var t=this,a=t._self._c;return a("q-page",{staticClass:"flex flex-center relative"},[a("q-header",{staticClass:"text-primary bg-white"},[a("q-toolbar",{attrs:{dense:""}},[a("q-btn",{attrs:{to:{name:"ForgotPassword"},flat:"",round:"",dense:"",icon:"arrow_back"}}),a("q-toolbar-title",{staticClass:"text-weight-medium"},[t._v("\n        Reset Password\n      ")])],1)],1),a("div",{staticClass:"q-pa-sm",staticStyle:{"max-width":"420px",width:"100%"}},[a("div",{staticClass:"flex justify-center"},[t.shop&&t.shop.logo_path?a("img",{staticStyle:{width:"auto",height:"75px","object-fit":"contain","max-width":"150px"},attrs:{src:t.shop.logo}}):a("img",{staticStyle:{width:"auto",height:"75px","object-fit":"contain","max-width":"150px"},attrs:{src:"/icon/pp.png"}})]),t.errors.email?a("div",{staticClass:"text-red q-pb-sm text-center"},[t._v(t._s(t.errors.email[0]))]):t._e(),a("q-card",{staticClass:"q-pt-sm",staticStyle:{background:"rgb(255 255 255 / 71%)"},attrs:{flat:""}},[a("q-card-section",[a("div",{staticClass:"text-grey-7 q-pa-sm"},[t._v(t._s(t.isValidToken?"Silahkan ganti kata sandi anda, gunakan kata sandi yang tidak mudah di tebak, tapi mudah di ingat.":"Kode token sudah kami kirim ke alamat email anda, silahkan buka email anda dan masukan token kedalam input yang tersedia."))]),a("q-form",{staticClass:"q-gutter-y-sm q-pa-sm",on:{submit:function(a){return a.preventDefault(),t.submit.apply(null,arguments)}}},[t.isValidToken?[a("q-input",{attrs:{label:"Kata Sandi *",color:"grey-6",type:t.isPwd?"password":"text",dense:""},scopedSlots:t._u([{key:"prepend",fn:function(){return[a("q-icon",{attrs:{name:"lock"}})]},proxy:!0},{key:"append",fn:function(){return[a("q-icon",{staticClass:"cursor-pointer",attrs:{name:t.isPwd?"visibility_off":"visibility"},on:{click:function(a){t.isPwd=!t.isPwd}}})]},proxy:!0}],null,!1,3050512400),model:{value:t.form.password,callback:function(a){t.$set(t.form,"password",a)},expression:"form.password"}}),a("q-input",{attrs:{label:"Konfirmasi Kata Sandi *",color:"grey-6",type:t.isPwd?"password":"text",dense:""},scopedSlots:t._u([{key:"prepend",fn:function(){return[a("q-icon",{attrs:{name:"lock"}})]},proxy:!0},{key:"append",fn:function(){return[a("q-icon",{staticClass:"cursor-pointer",attrs:{name:t.isPwd?"visibility_off":"visibility"},on:{click:function(a){t.isPwd=!t.isPwd}}})]},proxy:!0}],null,!1,3050512400),model:{value:t.form.password_confirmation,callback:function(a){t.$set(t.form,"password_confirmation",a)},expression:"form.password_confirmation"}})]:[a("q-input",{attrs:{label:"Token *",color:"grey-6",dense:"",rules:[function(t){return t&&t.length>0||"Silahkan masukan token"}]},model:{value:t.form.token,callback:function(a){t.$set(t.form,"token",a)},expression:"form.token"}})],a("div",{staticClass:"column q-pt-sm"},[a("q-btn",{attrs:{loading:t.isLoading,type:"submit",color:"primary",padding:"sm lg"}},[t._v(t._s(t.isValidToken?"Update Password":"Kirim Token"))])],1),a("div",{staticClass:"q-py-md text-center"},[a("q-btn",{attrs:{disabled:t.isLoading,"no-caps":"",flat:"",color:"blue-7",to:{name:"Login"}}},[t._v("Kembali ke halaman login")])],1)],2)],1)],1)],1)],1)},i=[],o=s("ded3"),n=s.n(o),r=(s("14d9"),s("d3b7"),s("e6cf"),s("a79d"),s("2a19")),d=s("2f62"),l=s("758b"),c={name:"pageResetPassword",data:function(){return{isPwd:!0,isValidToken:!1,form:{email:"",token:"",password:"",password_confirmation:""}}},computed:{errors:function(){return this.$store.state.errors},isLoading:function(){return this.$store.state.loading},shop:function(){return this.$store.state.shop}},mounted:function(){localStorage.getItem("is_reqpwd")||this.$router.push({name:"ForgotPassword"})},methods:n()(n()({},Object(d["b"])("user",["resetPassword"])),{},{submit:function(){var t=this;if(this.isValidToken){if(!this.form.password||!this.form.password_confirmation)return;this.resetPassword(this.form)}else this.$store.commit("SET_LOADING",!0),Object(l["a"])().get("validateToken/"+this.form.token).then((function(a){200==a.status&&(1==a.data.OK?(t.isValidToken=!0,t.form.token=a.data.data.token,t.form.email=a.data.data.email):r["a"].create({type:"negative",message:a.data.message}))})).finally((function(){t.$store.commit("SET_LOADING",!1)}))}})},m=c,p=s("2877"),u=s("9989"),f=s("e359"),k=s("65c6"),h=s("9c40"),w=s("6ac5"),b=s("f09f"),g=s("a370"),y=s("0378"),x=s("27f9"),q=s("0016"),v=s("eebe"),_=s.n(v),P=Object(p["a"])(m,e,i,!1,null,null,null);a["default"]=P.exports;_()(P,"components",{QPage:u["a"],QHeader:f["a"],QToolbar:k["a"],QBtn:h["a"],QToolbarTitle:w["a"],QCard:b["a"],QCardSection:g["a"],QForm:y["a"],QInput:x["a"],QIcon:q["a"]})}}]);