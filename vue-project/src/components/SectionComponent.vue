<script lang="ts">
import {defineComponent} from 'vue'

export default defineComponent({
  name: "SectionComponent",
  props: {
    title: String,
    text: String,
    image: String,
    imagePosition: {
      type: String,
      default: "left",
    }
  }
})
</script>

<template>
  <section class="section-content w-75 m-auto mt-8" :class="{ 'image-on-left': imagePosition === 'left', 'image-on-right': imagePosition === 'right' }">
    <div class="content">
      <h2>{{ title }}</h2>
      <p>{{ text }}</p>
    </div>
    <div class="section-image">
      <img :src="image" alt="Section Image">
    </div>
  </section>
</template>

<style scoped>


</style>