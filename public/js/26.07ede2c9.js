(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[26],{f46f:function(t,e,s){"use strict";s.r(e);var a=function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("q-page",[s("div",{staticClass:"q-pa-md q-gutter-y-md"},[s("q-input",{attrs:{label:"Nama"},scopedSlots:t._u([{key:"prepend",fn:function(){return[s("q-icon",{attrs:{name:"person"}})]},proxy:!0}]),model:{value:t.form.name,callback:function(e){t.$set(t.form,"name",e)},expression:"form.name"}}),s("q-input",{attrs:{type:"email",label:"Email"},scopedSlots:t._u([{key:"prepend",fn:function(){return[s("q-icon",{attrs:{name:"email"}})]},proxy:!0}]),model:{value:t.form.email,callback:function(e){t.$set(t.form,"email",e)},expression:"form.email"}}),s("q-input",{attrs:{label:"No Ponsel / Whatasapp"},scopedSlots:t._u([{key:"prepend",fn:function(){return[s("q-icon",{attrs:{name:"phone"}})]},proxy:!0}]),model:{value:t.form.phone,callback:function(e){t.$set(t.form,"phone",e)},expression:"form.phone"}}),t.changePassword?[s("q-input",{attrs:{type:t.isPwd?"password":"text",placeholder:"Password Baru"},scopedSlots:t._u([{key:"prepend",fn:function(){return[s("q-icon",{attrs:{name:"lock"}})]},proxy:!0},{key:"append",fn:function(){return[s("q-icon",{staticClass:"cursor-pointer",attrs:{name:t.isPwd?"visibility_off":"visibility"},on:{click:function(e){t.isPwd=!t.isPwd}}})]},proxy:!0}],null,!1,3050512400),model:{value:t.form.password,callback:function(e){t.$set(t.form,"password",e)},expression:"form.password"}}),s("q-input",{attrs:{type:t.isPwd?"password":"text",placeholder:"Konfirmasi Password"},scopedSlots:t._u([{key:"prepend",fn:function(){return[s("q-icon",{attrs:{name:"lock"}})]},proxy:!0}],null,!1,3219601639),model:{value:t.form.password_confirmation,callback:function(e){t.$set(t.form,"password_confirmation",e)},expression:"form.password_confirmation"}})]:t._e(),s("q-btn",{staticClass:"q-mt-md",attrs:{dense:"",color:"primary","no-caps":"",flat:"",label:t.changePassword?"Batal Ganti Password":"Ganti Password"},on:{click:t.btnChangePassword}})],2),s("q-footer",[s("q-btn",{staticClass:"full-width",attrs:{loading:t.loading,label:"Simpan"},on:{click:t.submit}},[s("q-tooltip",{staticClass:"bg-accent"},[t._v("Simpan")])],1)],1)],1)},o=[],n=s("ded3"),r=s.n(n),i=(s("b0c0"),s("2f62")),l=s("758b"),c={data:function(){return{isPwd:!0,isPwd1:!0,changePassword:!1,form:{name:"",email:"",phone:"",password:"",password_confirmation:""}}},computed:r()({},Object(i["e"])({user:function(t){return t.user.user},loading:function(t){return t.loading}})),created:function(){var t=this;this.user?(this.form.name=this.user.name,this.form.email=this.user.email,this.form.phone=this.user.phone):Object(l["a"])().get("user").then((function(e){200==e.status&&(t.form.name=e.data.results.name,t.form.email=e.data.results.email,t.form.phone=e.data.results.phone,t.$store.commit("user/SET_USER",e.data.results))}))},methods:r()(r()({},Object(i["b"])("user",["getUser","updateUser"])),{},{submit:function(){this.$store.commit("SET_LOADING",!0),this.updateUser(this.form)},btnChangePassword:function(){this.changePassword=!this.changePassword,this.form.password_confirmation="",this.form.password=""}})},p=c,m=s("2877"),u=s("9989"),d=s("27f9"),f=s("0016"),h=s("9c40"),w=s("7ff0"),b=s("05c0"),P=s("eebe"),q=s.n(P),y=Object(m["a"])(p,a,o,!1,null,null,null);e["default"]=y.exports;q()(y,"components",{QPage:u["a"],QInput:d["a"],QIcon:f["a"],QBtn:h["a"],QFooter:w["a"],QTooltip:b["a"]})}}]);