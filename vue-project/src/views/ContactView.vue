<script lang="ts">
import {defineComponent} from 'vue'
import BannerComponent from "@/components/BannerComponent.vue";

export default defineComponent({
  name: "ContactView",
  components: { BannerComponent },
  data: () => ({
    firstName: '',
    lastName: '',
    userEmail: '',
    userMessage: '',
    firstNameRules: [
      value => !!value || 'Name is required',
    ],
    lastNameRules: [
      value => !!value || 'Last name is required.',
    ],
    emailRules: [
      value => !!value || 'E-mail is required.',
      value => /.+@.+\..+/.test(value) || 'E-mail must be valid.',
    ],
    messageRules:[
      value => !!value || 'Please input your message.',
    ],
  }),
})

</script>

<template>
  <BannerComponent
      title="Contact us"
      subtitle="Where Every Sip Tells a Story"
      buttonText="Learn more about us →"
      linkTo="/about"
      backgroundImage="https://t4.ftcdn.net/jpg/02/34/63/07/360_F_234630793_eHKQucxaXftnWrecTJFITmD4cr3TlUgG.jpg"
  />

  <v-row justify="center" align="stretch" class=" mt-5 contact-page-details">
    <v-col :cols="12" :sm="6">
      <v-card class="h-100 d-flex align-center">
        <v-card-text class="d-flex flex-column align-start">
          <v-card-title class="align-self-start">Contact Details</v-card-title>
          <div>
            <p>Address: Urban Coffee Street 13, XY 12345</p>
            <p>Email: email123@gmail.com</p>
            <p>Phone: +123 456-7890</p>
            <p>Or: +987 654 3210</p>
          </div>

          <v-card-title class="align-self-start mt-3">Opening Hours</v-card-title>
          <div>
            <p>Monday - Friday: 9:00 AM - 6:00 PM</p>
            <p>Saturday: 10:00 AM - 4:00 PM</p>
            <p>Sunday: Closed</p>
          </div>
        </v-card-text>
      </v-card>
    </v-col>


  <v-col :cols="12" :sm="6">
      <v-card class="h-100">
        <v-card-title>Google Maps</v-card-title>
        <v-card-text>
          <v-img
              src="https://t3.ftcdn.net/jpg/04/49/73/64/360_F_449736488_IAGo58o7DloC8Os5S5v9vppX3BIxzK4S.jpg"></v-img>
        </v-card-text>
      </v-card>
    </v-col>
  </v-row>


  <v-divider inset></v-divider>



  <v-row justify="center" >
    <v-col
        :cols="12"
        :sm="10"
        :md="8"
        :lg="6"
    >
      <h2 class="text-center contact-heading"> Any questions? Contact us! </h2>
      <v-form @submit.prevent class="mt-5 contact-page-form">
        <v-text-field
            v-model="firstName"
            :rules="firstNameRules"
            label="First name:"
            required
        ></v-text-field>
        <v-text-field
            v-model="lastName"
            :rules="lastNameRules"
            label="Last name:"
            required
        ></v-text-field>
        <v-text-field
            v-model="userEmail"
            :rules="emailRules"
            label="E-mail:"
            required
        ></v-text-field>
        <v-textarea
            v-model="userMessage"
            :rules="messageRules"
            label="Your message:"
            required
            class="mb-5"
        ></v-textarea>
        <v-btn type="submit" class="btn-main" >Submit</v-btn>
      </v-form>
    </v-col>
  </v-row>
</template>


<style scoped>

</style>