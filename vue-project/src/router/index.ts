import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ProductView from "@/views/ProductView.vue";

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: () => import('../views/HomeView.vue')
    },
    {
      path: '/about',
      name: 'about',
      component: () => import('../views/AboutView.vue')
    },
    {
      path: '/blog',
      name: 'blog',
      component: () => import('../views/BlogView.vue')
    },
    {
      path: '/blog/post/:id',
      name: 'blog-post',
      component: () => import('../views/BlogPost.vue'),
      props: true,
    },
    {
      path: '/coffeePath',
      name: 'coffeePath',
      component: () => import('../views/CoffeeView.vue')
    },
    {
      path: '/contact',
      name: 'contact',
      component: () => import('../views/ContactView.vue')
    },
    {
      path: '/menu',
      name: 'menu',
      component: () => import('../views/MenuView.vue')
    },
    {
      path:'/menu/product/:id',
      name: 'menu-product',
      component: () => import('../views/ProductView.vue'),
      props: true,
    },
    {
      path:'/wishlist',
      name: 'wishlist',
      component: () => import('../views/WishlistView.vue'),
    },

  ]
})

export default router
