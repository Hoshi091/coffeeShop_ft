<script lang="ts">
import {defineComponent} from 'vue'
import {useWishlistStore} from "@/stores/useWishlistStore";
import BannerComponent from "@/components/BannerComponent.vue";
import {productTimestamp} from "@/stores/productTimestamp";
import CurrentOffers from "@/components/CurrentOffers.vue";

export default defineComponent({
  name: "WishlistView",
  components: {CurrentOffers, BannerComponent},
  setup() {
    const wishlistStore = useWishlistStore();
    const wishlist = wishlistStore.wishlist;

    return {
      wishlist,
    };
  },
  methods: {
    onProductClick(productId: string) {
      productTimestamp().addClickedProduct(productId);
    },
  },
})
</script>

<template>
  <BannerComponent
      title="Wishlist"
      subtitle="Where Every Sip Tells a Story"
      buttonText="Check out the rest of our menu →"
      linkTo="/menu"
      backgroundImage="https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg"
  />
  <v-container class="product-cards">
    <v-row>
      <v-col v-for="product in wishlist" :key="product.id" cols="12" sm="6" md="6" lg="3" xl="3">
        <router-link :to="{ name: 'menu-product', params: { id: product.id } }"  @click="onProductClick(product.id)" >
          <v-card>
            <v-img :src="product.image" alt="Post Image"></v-img>
            <v-card-title>{{ product.name }}</v-card-title>
            <v-card-text class="card-price">${{ product.price }}</v-card-text>
          </v-card>
        </router-link>
      </v-col>
    </v-row>
  </v-container>

  <CurrentOffers></CurrentOffers>

</template>

<style scoped>

</style>