<script lang="ts">
import { defineComponent } from 'vue';
import axios from "axios";

export default defineComponent({
  name: 'BlogPost',
  props: {
    id: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      post: {} as any,
    };
  },
  mounted() {
    this.getPostById();
  },
  methods: {
    async getPostById() {
      const postId = this.id;
      try {
        const response = await axios.get(`http://localhost:8000/api/posts/${postId}`);
        this.post = response.data.post[0];
      } catch (error) {
        console.error('Error', error);
      }
    },
  },

});
</script>

<template>
  <div class="w-66 mx-auto mt-7 text-center blog-post">
    <v-img :src="post.image"></v-img>
    <h2 class="mt-4 mb-4">{{ post.title }}</h2>
    <v-divider></v-divider>
    <p>{{ post.content }}</p>
  </div>
</template>
<style scoped>

</style>
