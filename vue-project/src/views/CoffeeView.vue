<script lang="ts">
import {defineComponent} from 'vue'
import BannerComponent from "@/components/BannerComponent.vue";
import CurrentOffers from "@/components/CurrentOffers.vue";
import OurStories from "@/components/OurStories.vue";


export default defineComponent({
  name: "CoffeeView",
  components: {OurStories, CurrentOffers, BannerComponent}
})
</script>

<template>
  <BannerComponent
      title="About our coffee"
      subtitle="Discover our signature blends"
      buttonText="Check out our menu →"
      linkTo="/menu"
      backgroundImage="https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg"
  />
  <OurStories></OurStories>
  <v-divider inset></v-divider>
  <v-container class="about-coffee-container">
    <v-row>
      <v-col :cols="12" :sm="6">
        <div class="column-container">
          <h2>Coffee Origins</h2>
          <p>
            From Bean to Cup: A Journey Across Coffee Lands
          </p>
          <p>
            At Urban Brew Hub, we embark on a global journey to source the finest coffee beans from the world's most renowned coffee regions. Each bean tells a story of its origin, from the misty highlands of Ethiopia to the lush plantations of Colombia. We take pride in bringing you a diverse selection that reflects the unique characteristics of each coffee-producing region.
          </p>
        </div>
        <div class="column-container">
          <h2>Roasting Process</h2>
          <p>
            The Art of Roasting: Crafting Perfect Flavor Profiles
          </p>
          <p>
            Our journey doesn't end with sourcing; it's where the magic begins. At Urban Brew Hub, we believe in the art of roasting. Our master roasters carefully roast each batch to perfection, enhancing the unique flavors of the beans. From light and fruity to dark and rich, our roasting process is a testament to our dedication to delivering a memorable coffee experience with every sip.
          </p>
        </div>
        <div class="column-container">
          <h2>Single-Origin Showcases</h2>
          <p>
            Indulge in the Unique Flavors of Single-Origin Coffees
          </p>
          <p>
            Immerse yourself in the distinct flavors of our single-origin coffee collection. Each coffee tells a story of its specific terroir, climate, and altitude. From the fruity notes of beans from Kenya to the chocolatey richness of beans from Brazil, our single-origin showcases invite you to explore the nuances that make each cup a unique and delightful experience.
          </p>
        </div>
      </v-col>

      <v-divider vertical class="divider" color="#645147"></v-divider>

      <v-col :cols="12" :sm="6">
        <div class="column-container">
          <h2>Ethical Sourcing</h2>
          <p>
            Sustainably Harvested, Exceptionally Enjoyed
          </p>
          <p>
            Our commitment to sustainability extends beyond the cup. We work closely with coffee farmers who share our values of ethical and eco-friendly practices. By supporting these communities, we ensure that every bean is not just exceptional in flavor but also contributes to the well-being of those who cultivate it. Learn more about our efforts in promoting ethical sourcing and sustainable coffee practices.
          </p>
        </div>
        <div class="column-container">
          <h2>Brewing Techniques</h2>
          <p>
            Elevating Your Coffee Experience, One Brew at a Time
          </p>
          <p>
            Brewing coffee is an art, and we take pride in helping you master it. Whether you prefer a classic pour-over, the convenience of a drip brew, or the boldness of espresso, we provide tips and guidance to elevate your brewing experience. Explore our brewing guides and discover new techniques to savor the full potential of your favorite coffee.
          </p>
        </div>
        <div class="column-container">
          <h2>Specialty Edition Coffees</h2>
          <p>Elevate your coffee experience with our exclusive Specialty Edition Coffees </p>
          <p>
             Crafted with precision and passion, these limited-edition blends are a celebration of exceptional flavors and unique profiles.  Our master roasters meticulously select rare and premium beans to create these extraordinary coffees. Each Specialty Edition release is a testament to our commitment to innovation and providing our customers with a one-of-a-kind coffee journey.
          </p>
        </div>
      </v-col>
    </v-row>
  </v-container>
  <v-divider inset></v-divider>
  <h2 class="text-center mb-4 mt-2" style="color: var(--cl-primary); text-decoration: underline">Check out our top picks</h2>
  <CurrentOffers></CurrentOffers>
</template>

<style scoped>

</style>