<script lang="ts">
import {defineComponent} from 'vue'

export default defineComponent({
  name: "BannerComponent",
  props: {
    title: String,
    subtitle: String,
    buttonText: String,
    backgroundImage: {
      type: String,
      default: 'https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg'
    },
    linkTo: {
      type: [String, Object],
      default: '/about'
    }
  }

})

</script>

<template>
  <section class="main-header" :style="{ background: `linear-gradient(0deg, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url(${backgroundImage})` }">
    <h1>{{ title }}</h1>
    <p>{{ subtitle }}</p>
    <router-link :to="linkTo" class="btn-main">{{ buttonText }}</router-link>
  </section>
</template>

<style scoped>

</style>