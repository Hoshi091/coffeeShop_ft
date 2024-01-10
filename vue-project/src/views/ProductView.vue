<script lang="ts">
import {defineComponent} from 'vue'
import axios from "axios";
import BannerComponent from "@/components/BannerComponent.vue";

export default defineComponent({
  name: "ProductView",
  components: {BannerComponent},
  props: {
    id: {
      type: String,
      required: true,
    }
  },
  data(){
    return {
      product: {} as any,
    }
  },
  mounted() {
    this.getProductById();
  },
  methods: {
    async getProductById() {
      const productId = this.id;
      try {
        const response = await axios.get(`http://localhost:8000/api/products/${productId}`);
        this.product = response.data.post[0];

      } catch (error) {
        console.error('Error', error);
      }
    },

  },
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
  <div class="w-66 mx-auto mt-7 text-center menu-product">
    <v-row>
      <v-col cols="6" sm="12" md="6">
        <v-img :src="product.image"></v-img>
      </v-col>
      <v-col cols="6" sm="12" md="6">
        <h2 class="mt-4 mb-4">{{ product.name }}</h2>
        <v-divider></v-divider>
        <p>{{ product.description }}</p>
        <p>${{product.price}}</p>
        <p v-if="product.is_available === 1" class="available">Available</p>
        <p v-else class="unavailable">Unavailable</p>
      </v-col>
    </v-row>


  </div>
</template>

<style scoped>

</style>