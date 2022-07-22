<template>
  <q-page>
    <q-header>
      <q-toolbar>
        <q-toolbar-title>
          Dashboard Panel
        </q-toolbar-title>
         <q-btn :to="{ name: 'Home', query: { load: 'true'}}"
          flat icon-right="arrow_forward" label="Lihat Toko" no-caps/>
      </q-toolbar>
    </q-header>

    <div class="overflow-x-hidden relative">
      <q-list separator>
        <q-item clickable v-ripple v-for="item in menus" :key="item.label" :to="{name: item.path}">
          <q-item-section avatar>
            <q-avatar :color="item.color" text-color="white" :icon="item.icon" size="md"/>
          </q-item-section>
          <q-item-section>
            <q-item-label>{{ item.label }}</q-item-label>
            <q-item-label caption lines="1">{{ item.caption }}</q-item-label>
            </q-item-section>
          <q-item-section side>
            <q-icon name="navigate_next" />
          </q-item-section>
        </q-item>
        <q-item clickable v-ripple @click.prevent="logout">
          <q-item-section avatar>
            <q-avatar color="grey" text-color="black" icon="logout" size="md"/>
          </q-item-section>
          <q-item-section>
            <q-item-label>Logout</q-item-label>
            <q-item-label caption lines="1">Keluar Sesi</q-item-label>
            </q-item-section>
          <q-item-section side>
            <q-icon name="navigate_next" />
          </q-item-section>
        </q-item>
      </q-list>
    </div>
  </q-page>
</template>

<script>
export default {
  data () {
    return {
      isShowen: false,
      menus: [
        { label: 'Akun Saya', caption: 'Pengaturan Akun', path: 'Account', icon: 'person', color: 'green'},
        { label: 'Identitas Toko', caption: 'Pengaturan Tampilan toko', path: 'Shop', icon: 'store', color: 'blue'},
        { label: 'Kelola Kategori', caption: 'Kelola kategori produk', path: 'CategoryIndex', icon: 'category', color: 'amber-7'},
        { label: 'Kelola Produk', caption: 'Tambah, edit dan hapus produk', path: 'AdminProductIndex', icon: 'inventory_2', color: 'deep-orange'},
        { label: 'Informasi', caption: 'Kelola Informasi Tambahan', path: 'AdminPostIndex', icon: 'article', color: 'purple-7'},
        { label: 'Iklan Produk', caption: 'Kelola produk Favorit/Terbaru', path: 'Slider', icon: 'view_carousel', color: 'teal'},
        { label: 'Banner Informasi', caption: 'Kelola banner, partner dan featured', path: 'AdminBlockIndex', icon: 'space_dashboard', color: 'amber-7'},
        { label: 'Transaksi', caption: 'Kelola pesanan', path: 'OrderIndex', icon: 'receipt', color: 'blue-7'},
        //{ label: 'Akun Bank', caption: 'Kelola Akun Bank', path: 'BankIndex', icon: 'account_balance', color: 'blue-7'},
        { label: 'Pengaturan', caption: 'Pengaturan Website dan pengiriman', path: 'Config', icon: 'settings', color: 'accent'},
      ]
    }
  },
  methods: {
    logout() {
      this.$store.dispatch('user/logout')
    },
    exitApp() {
      this.$store.dispatch('user/exitApp', navigator)
    },
  }
}
</script>