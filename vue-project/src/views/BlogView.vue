<script lang="ts">
import {defineComponent} from 'vue'
import BannerComponent from "@/components/BannerComponent.vue";
import axios from "axios";



export default defineComponent({
  name: "BlogView",
  components: {BannerComponent},
  data(){
    return {
      posts:[] as any[],
    }
  },
  mounted(){
    this.getAllPosts();
  },
  methods:{
    async getAllPosts() {
      try {
        const response = await axios.get('http://localhost:8000/api/posts');
        this.posts = response.data.posts;
      } catch (error) {
        console.error('Error', error);
      }
    },
    truncateText(text: string, limit: number) {
      return text.length > limit ? text.slice(0, limit) + '...' : text;
    },
  }

})
</script>

<template>
  <BannerComponent
      title="Blog"
      subtitle="Check out other people's stories"
      buttonText="Learn more about us →"
      linkTo="/about"
      backgroundImage="https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg"
  />

  <v-container class="blog-post-cards">
    <v-row>
      <v-col v-for="post in posts" :key="post.id" cols="12" sm="6" md="6" lg="4" xl="4">
        <router-link :to="{ name: 'blog-post', params: { id: post.id } }" >
          <v-card>
            <v-img :src="post.image" alt="Post Image"></v-img>
            <v-card-title>{{ post.title }}</v-card-title>
            <v-card-text>{{ truncateText(post.content, 100) }}</v-card-text>
          </v-card>
        </router-link>
      </v-col>
    </v-row>
  </v-container>
</template>

<style scoped>

</style>