<template>
  <v-carousel hide-delimiter-background show-arrows cycle class="carousel-main">
    <template v-slot:prev="{ props }">
      <v-btn
          rounded="xl"
          color="var(--cl-secondary)"
          @click="props.onClick"
      > ← </v-btn>
    </template>
    <template v-slot:next="{ props }">
      <v-btn
          rounded="xl"
          color="var(--cl-secondary)"
          @click="props.onClick"
      > → </v-btn>
    </template>
    <v-carousel-item
        v-for="(coffeeType, index) in coffeeTypes"
        :key="index"
        :src="coffeeType.image"
        cover
    >
      <div class="overlay"></div>
      <div class="carousel-text">
        <h2>{{ coffeeType.name }}</h2>
        <p>{{ coffeeType.description }}</p>

      </div>
    </v-carousel-item>
  </v-carousel>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'CurrentOffers',
  data() {
    return {
      coffeeTypes: [
        {
          name: 'Arabica',
          description: 'Smooth and aromatic coffee.',
          image: 'https://zippypixels.com/wp-content/uploads/2018/03/Free-coffee-bag-mockup.jpg',
        },
        {
          name: 'Robusta',
          description: 'Bold and strong flavor.',
          image: 'https://zippypixels.com/wp-content/uploads/2018/03/Free-coffee-bag-mockup.jpg',

        },
        {
          name: 'Ethiopian Yirgacheffe',
          description: 'Medium-bodied with fruity and floral notes.',
          image: 'https://zippypixels.com/wp-content/uploads/2018/03/Free-coffee-bag-mockup.jpg',

        },
        {
          name: 'Colombian Supremo',
          description: 'Rich and well-balanced with a hint of nuttiness.',
          image: 'https://zippypixels.com/wp-content/uploads/2018/03/Free-coffee-bag-mockup.jpg',
        },
        {
          name: 'Sumatra Mandheling',
          description: 'Full-bodied and earthy with low acidity.',
          image: 'https://zippypixels.com/wp-content/uploads/2018/03/Free-coffee-bag-mockup.jpg',
        },
      ],
    };
  },
  methods: {
    learnMore(coffeeType: any) {
      console.log('Learn more about:', coffeeType.name);
    },
  },
});
</script>
