(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([[48],{"783f":function(t,e,a){"use strict";a.r(e);var s=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("q-page",{staticClass:"bg-grey-1 romance",class:{"flex flex-center":t.loading}},[t.loading?t._e():[a("q-header",{staticClass:"bg-white box-shadow",attrs:{reveal:"","reveal-offset":10}},[a("q-toolbar",{staticClass:"q-py-md"},[t.shop?a("img",{staticClass:"logo",attrs:{src:t.shop.logo?t.shop.logo:"/icon/logo.png"}}):t._e(),a("div",{staticClass:"col q-ml-md row items-center"},[a("div",{staticClass:"col"},[a("q-input",{ref:"input",staticClass:"text-xs",attrs:{color:"grey-4",standout:"bg-primary text-white",dense:"",placeholder:"Cari produk..."},on:{keyup:function(e){return!e.type.indexOf("key")&&t._k(e.keyCode,"enter",13,e.key,"Enter")?null:t.searchNow(e)}},scopedSlots:t._u([{key:"append",fn:function(){return[a("q-icon",{staticClass:"cursor-pointer",attrs:{name:"search"},on:{click:t.searchNow}})]},proxy:!0}],null,!1,1413476373),model:{value:t.search,callback:function(e){t.search=e},expression:"search"}})],1),a("div",{staticClass:"q-pl-sm"},[a("shopping-cart")],1)])])],1),a("div",{staticClass:"header-romance"},[t.sliders.data.length?a("div",[a("swipe-slider",{attrs:{datas:t.sliders.data}})],1):t._e()]),t.blocks.featured.length?a("div",{staticClass:"auto-padding-side block-container",attrs:{id:"featured"}},[a("featured-carousel",{staticClass:"q-pt-md",attrs:{datas:t.blocks.featured}})],1):t._e(),t.categories&&t.categories.data.length>1?a("div",{staticClass:"auto-padding-side block-container",attrs:{id:"categories"}},[a("div",{staticClass:"block-heading"},[a("div",{staticClass:"block-title"},[a("h2",[t._v("Kategori")])])]),a("div",{staticClass:"q-pb-sm"},[a("category-carousel",{attrs:{datas:t.categories.data}})],1)]):t._e(),t.blocks.banner.length?a("div",{staticClass:"banner auto-padding-side block-container"},[a("img",{attrs:{src:t.blocks.banner[0].image_url},on:{click:function(e){return t.goToPost(t.blocks.banner[0])}}})]):t._e(),a("product-block",{attrs:{products:t.products}}),t.blocks.partner.length?a("div",{staticClass:"partner auto-padding-side block-container"},[a("div",{staticClass:"block-heading"},[a("div",{staticClass:"block-title"},[a("h2",[t._v("Partners")])])]),a("div",{staticClass:"block-content"},[a("partner-carousel",{attrs:{datas:t.blocks.partner}})],1)]):t._e(),t.blocks.banner.length>1?a("div",{staticClass:"banner auto-padding-side block-container"},[a("img",{attrs:{src:t.blocks.banner[1].image_url},on:{click:function(e){return t.goToPost(t.blocks.banner[1])}}})]):t._e(),a("post-block",{attrs:{posts:t.posts}}),t.blocks.banner.length>2?a("div",{staticClass:"banner auto-padding block-container"},[a("img",{attrs:{src:t.blocks.banner[2].image_url},on:{click:function(e){return t.goToPost(t.blocks.banner[2])}}})]):t._e(),a("install-app"),a("footer-block")],a("q-inner-loading",{attrs:{showing:t.loading}},[a("q-spinner-facebook",{attrs:{size:"50px",color:"primary"}})],1)],2)},n=[],r=a("ded3"),i=a.n(r),o=(a("ac1f"),a("841c"),a("2f62")),c=a("c6c8"),l=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"overflow-hidden"},[a("swiper",{staticClass:"swiper",attrs:{options:t.swiperOptions}},[t._l(t.datas,(function(t,e){return a("swiper-slide",{key:e},[a("img",{staticStyle:{width:"100%",height:"auto"},attrs:{src:t.src}})])})),a("div",{staticClass:"swiper-pagination swiper-pagination-white",attrs:{slot:"pagination"},slot:"pagination"})],2)],1)},d=[],u={name:"Front",props:{datas:Array},data:function(){return{swiperOptions:{spaceBetween:30,centeredSlides:!0,autoHeight:!0,autoplay:{delay:4500,disableOnInteraction:!1},pagination:{el:".swiper-pagination",clickable:!0,dynamicBullets:!0},navigation:{nextEl:".swiper-button-next",prevEl:".swiper-button-prev"}}}}},p=u,g=a("2877"),h=Object(g["a"])(p,l,d,!1,null,null,null),b=h.exports,f=a("3990"),k=function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{staticClass:"overflow-hidden"},[a("swiper",{ref:"mySwiper",attrs:{options:t.swiperOptions}},t._l(t.datas,(function(e){return a("swiper-slide",{key:e.id},[a("div",{staticClass:"column full-height relative bg-white wisata-card"},[e.filename?a("q-img",{staticClass:"cursor-pointer rounded-borders",attrs:{src:e.src,ratio:"1"},on:{click:function(a){return t.openCategory(e.id)}}},[a("div",{staticClass:"content"},[a("div",[a("div",{staticClass:"text-weight-medium text-auto"},[t._v(t._s(e.title))])])])]):t._e()],1)])})),1)],1)},m=[],w={name:"CategoryCarousel",props:{datas:Array},data:function(){return{swiperOptions:{slidesPerView:4,spaceBetween:15}}},created:function(){this.datas.length<=3&&(this.swiperOptions.slidesPerView=3)},methods:{openCategory:function(t){t&&this.$router.push({name:"ProductCategory",params:{id:t}})}}},C=w,v=a("068f"),y=a("eebe"),_=a.n(y),x=Object(g["a"])(C,k,m,!1,null,null,null),q=x.exports;_()(x,"components",{QImg:v["a"]});var P=a("3f41"),O=a("d29a"),$=a("9a15"),S=a("30b4"),I=a("bae6"),Q={name:"PageIndex",components:{ShoppingCart:c["a"],SwipeSlider:b,InstallApp:S["a"],ProductBlock:P["a"],PostBlock:O["a"],CategoryCarousel:q,FeaturedCarousel:f["a"],PartnerCarousel:$["a"],FooterBlock:I["a"]},data:function(){return{search:"",slide:0}},computed:i()(i()({},Object(o["e"])({blocks:function(t){return t.block.blocks},sliders:function(t){return t.slider.sliders},categories:function(t){return t.category.categories},products:function(t){return t.product.initial_products},shop:function(t){return t.shop},loading:function(t){return t.loading},posts:function(t){return t.post.initialPost},config:function(t){return t.config}})),{},{cheight:function(){this.$q.screen.width;return this.$q.screen.width>600?"400px":this.$q.screen.width/1.5+"px"}}),methods:i()(i()({},Object(o["b"])(["getInitialData"])),{},{showProductByCategory:function(t){this.$router.push({name:"ProductCategory",params:{id:t}})},goToPost:function(t){t.post_id&&this.$router.push({name:"FrontPostShow",params:{slug:t.post.slug}})},searchNow:function(){this.search&&""!=this.search&&this.$router.push({name:"ProductSearch",query:{q:this.search}})}}),created:function(){this.shop&&this.products.data.length&&!this.$route.query.load||this.getInitialData()}},B=Q,E=a("9989"),j=a("e359"),F=a("65c6"),T=a("27f9"),A=a("0016"),N=a("74f7"),D=a("e669"),H=Object(g["a"])(B,s,n,!1,null,null,null);e["default"]=H.exports;_()(H,"components",{QPage:E["a"],QHeader:j["a"],QToolbar:F["a"],QInput:T["a"],QIcon:A["a"],QInnerLoading:N["a"],QSpinnerFacebook:D["a"]})}}]);