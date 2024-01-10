<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
</script>

<template>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"></head>

  <div>
    <div class="nav-menu">
      <i class="text-left mobile-navbar"
          @click="showMenu()">
        <svg xmlns="http://www.w3.org/2000/svg" height="16" width="14" viewBox="0 0 448 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M0 96C0 78.3 14.3 64 32 64H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32C14.3 128 0 113.7 0 96zM0 256c0-17.7 14.3-32 32-32H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H32c-17.7 0-32-14.3-32-32zM448 416c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32s14.3-32 32-32H416c17.7 0 32 14.3 32 32z"/></svg>
      </i>
      <div
          class="nav-content"
          :class="showMobileMenu ? 'open-menu' : 'closed-menu'"
      >
<!--         logo -->
        <RouterLink to="/"><v-icon>mdi-coffee</v-icon></RouterLink>
        <ul class="nav-items">
          <li><RouterLink to="/">Home</RouterLink></li>
          <li><RouterLink to="/about">About us</RouterLink></li>
          <li><RouterLink to="/blog">Blog</RouterLink></li>
          <li><RouterLink to="/coffeePath">About our coffee</RouterLink></li>
          <li><RouterLink to="/menu">Menu</RouterLink></li>
          <li><RouterLink to="/wishlist">Wishlist</RouterLink></li>
          <li><RouterLink to="/contact">Contact</RouterLink></li>
        </ul>
      </div>
    </div>
  </div>


<div>
  <RouterView />
</div>

  <div class="container main-footer">
    <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-3 py-3 my-3 ">
      <div class="col mb-3">
        <RouterLink to="/"><v-icon>mdi-coffee</v-icon></RouterLink>
        <p class="text-muted">&copy; 2024</p>
      </div>

      <div class="col mb-3">
        <h5>About us</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet justo gravida, consequat justo sed, ullamcorper erat. Phasellus venenatis pharetra ligula. Curabitur vel orci enim. Quisque lobortis lacinia auctor.</p>
      </div>


      <div class="col mb-3 ">
        <h5>Navigation</h5>
        <ul class="nav flex-column justify-content-center">
          <li><RouterLink to="/">Home</RouterLink></li>
          <li><RouterLink to="/about">About us</RouterLink></li>
          <li><RouterLink to="/blog">Blog</RouterLink></li>
          <li><RouterLink to="/coffeePath">About our coffee</RouterLink></li>
          <li><RouterLink to="/menu">Menu</RouterLink></li>
          <li><RouterLink to="/wishlist">Wishlist</RouterLink></li>
          <li><RouterLink to="/contact">Contact</RouterLink></li>
        </ul>
      </div>
    </footer>
  </div>

</template>
<script lang="ts">
export default {
  data() {
    return {
      showMobileMenu: false,
    };
  },
  methods: {
    showMenu() {
      this.showMobileMenu = !this.showMobileMenu;
    },
  },
};
</script>

