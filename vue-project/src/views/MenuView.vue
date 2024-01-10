<script lang="ts">
import {defineComponent} from 'vue'
import BannerComponent from "@/components/BannerComponent.vue";
import axios from "axios";
import {productTimestamp} from "@/stores/productTimestamp";

export default defineComponent({
  name: "MenuView",
  components: {BannerComponent},
  data(){
    return {
      products:[] as any[],
    }
  },
  mounted(){
    this.getProducts();
  },
  methods:{
    async getProducts() {
      try {
        const response = await axios.get('http://localhost:8000/api/products');
        this.products = response.data.posts;
      } catch (error) {
        console.error('Error', error);
      }
    },
    truncateText(text: string, limit: number) {
      return text.length > limit ? text.slice(0, limit) + '...' : text;
    },
    onProductClick(productId: string) {
      productTimestamp().addClickedProduct(productId);
    },
  }
})
</script>

<template>
  <BannerComponent
      title="Menu"
      subtitle="Where Every Sip Tells a Story"
      buttonText="Learn more about our coffee →"
      linkTo="/coffeePath"
      backgroundImage="https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg"
  />


  <v-container class="product-cards">
    <v-row>
      <v-col v-for="product in products" :key="product.id" cols="12" sm="6" md="6" lg="3" xl="3">
        <router-link :to="{ name: 'menu-product', params: { id: product.id } }" @click="onProductClick(product.id)" >
          <v-card>
            <v-img :src="product.image" alt="Post Image"></v-img>
            <v-card-title>{{ product.name }}</v-card-title>
            <v-card-text class="card-price">${{ product.price }}</v-card-text>
            <v-card-text>{{ truncateText(product.description, 50) }}</v-card-text>
            <p v-if="product.is_available === 1" class="availability">Available</p>
            <p v-else class="availability unavailable">Unavailable</p>
          </v-card>
        </router-link>
      </v-col>
    </v-row>
  </v-container>

</template>

<style scoped>

</style>