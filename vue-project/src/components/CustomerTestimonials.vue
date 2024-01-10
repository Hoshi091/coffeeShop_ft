<script lang="ts">
import {defineComponent} from 'vue'

export default defineComponent({
  name: "CustomerTestimonials",
  data() {
    return {
      testimonials: [
        { id: 1, author: 'John Doe', rating: 4, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
        { id: 2, author: 'Jane Smith', rating: 5, content: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
        { id: 3, author: 'Adam Doe', rating: 4, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' },
        { id: 4, author: 'Eve Smith', rating: 5, content: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
      ],
    };
  },
})
</script>

<template>
  <h2 class="mt-8 mb-6 text-center">People are saying about us</h2>
  <v-container class="testimonials">
    <v-row>
      <v-carousel  cycle hide-delimiters show-arrows="hover" >
        <v-carousel-item  v-for="testimonial in testimonials" :key="testimonial.id">
          <v-card class="col-lg-6 col-12 mx-auto">
            <v-card-title class="text-center">{{ testimonial.author }}</v-card-title>
            <v-card-text>
              <div class="text-center">
                <v-rating
                    v-model="testimonial.rating"
                    readonly
                    color="var(--cl-secondary)"
                ></v-rating>
              </div>
              <p class="text-center">{{ testimonial.content }}</p>
            </v-card-text>
          </v-card>
        </v-carousel-item>
      </v-carousel>
    </v-row>
  </v-container>
</template>


<style scoped>

</style>