
<script setup lang="ts">
import BannerComponent from "@/components/BannerComponent.vue";
import SectionComponent from "@/components/SectionComponent.vue";
import CustomerTestimonials from "@/components/CustomerTestimonials.vue";
</script>

<template>
  <BannerComponent
      title="About us"
      subtitle="Sip, Relax, Connect – Experience the Essence of Urban Brew Hub."
      buttonText="Check out our menu →"
      linkTo="/menu"
  />
  <SectionComponent
    title="Welcome to Urban Brew Hub"
    text="At Urban Brew Hub, we are more than just a coffee shop; we are a community of coffee enthusiasts dedicated to creating a memorable and delightful coffee experience for our patrons. Nestled in the heart of xyz, our coffee shop is a haven for those who appreciate the artistry behind every cup. From the rich aroma of freshly ground beans to the cozy ambiance, Urban Brew Hub is where every sip tells a story."
    image="https://images.unsplash.com/photo-1559925393-8be0ec4767c8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y2FmZXxlbnwwfHwwfHx8MA%3D%3D"
  />
  <SectionComponent
    title="Crafting Excellence in Every Cup"
    text="Our passion for exceptional coffee extends to the meticulous craft of brewing. We source the finest beans from around the world, ensuring that each cup boasts a unique and nuanced flavor profile. Our skilled baristas are committed to mastering the art of coffee, delivering perfection in every espresso shot and carefully crafted latte. Whether you're a seasoned coffee connoisseur or a casual drinker, Urban Brew Hub is your destination for unparalleled coffee craftsmanship."
    image="https://media.istockphoto.com/id/1282882269/photo/barista-making-latte-art-shot-focus-in-cup-of-milk-and-coffee-vintage-filter-image.jpg?s=612x612&w=0&k=20&c=DweV1Fmu1OMvMa8Qh0AfCMYnULO5Lw30jApMJzCiT6E="
    imagePosition="right"
  />
  <SectionComponent
    title="A Space to Connect and Savor"
    text="Beyond the enticing aroma and premium blends, Urban Brew Hub is a place to connect, relax, and savor the moments. Our welcoming atmosphere invites you to linger over a cup of your favorite brew, engage in meaningful conversations, or simply unwind with a good book. From our friendly staff to the inviting decor, we strive to create a space where the love for coffee and community converge, making Urban Brew Hub more than just a coffee shop – it's a destination."
    image="https://kernigkrafts.com/wp-content/uploads/2019/05/cafe-coffee-design-tasty.jpg"
  />
  <CustomerTestimonials/>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
