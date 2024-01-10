<script setup lang="ts">
import OurStories from "@/components/OurStories.vue";
import CurrentOffers from "@/components/CurrentOffers.vue";
import BannerComponent from "@/components/BannerComponent.vue";
import CustomerTestimonials from "@/components/CustomerTestimonials.vue";
import SectionComponent from "@/components/SectionComponent.vue";
</script>

<template>
  <main>
 <BannerComponent
      title="Urban Brew Hub"
      subtitle="Where Every Sip Tells a Story"
      buttonText="Learn More"
      backgroundImage="https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg"
  />

    <OurStories />
    <CurrentOffers />
    <SectionComponent
        title="Sip into Blissful Moments"
    text="Immerse yourself in the rich aroma of freshly brewed coffee and indulge in
              delightful moments. Our curated selections and cozy ambiance create the perfect
              environment for you to savor each sip and make memories with every cup."
    image="https://swiezopalona.pl/zdjecia/static/720x455/17320-.crop.webp"
    imagePosition="right"></SectionComponent>
    <SectionComponent
        title="Create Memories"
        text="Join the community of coffee enthusiasts who cherish every moment spent here.
              Whether it's catching up with friends, diving into a good book, or simply enjoying
              the soothing ambiance, our coffee haven is a place where memories are brewed and
              smiles are shared."
        image="https://media.istockphoto.com/id/887216480/photo/friends-having-coffee-together.jpg?s=612x612&w=0&k=20&c=6gh-ki55MbuG6z0mGkRm--_SGrHv4juF2x0Y1HNfoeI="
        imagePosition="right"></SectionComponent>


  <CustomerTestimonials/>
  </main>
</template>
