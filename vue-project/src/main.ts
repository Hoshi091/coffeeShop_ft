import './assets/main.css';
import { createApp } from 'vue';
import App from './App.vue';
import { createPinia } from 'pinia';
import 'bootstrap/dist/css/bootstrap.css';
import "@fortawesome/fontawesome-free/css/all.css";
import "@mdi/font/css/materialdesignicons.css";


import 'vuetify/styles';
import { createVuetify } from 'vuetify';
import 'vuetify/dist/vuetify.min.css';
import * as components from 'vuetify/components';
import * as directives from 'vuetify/directives';
import router from './router';

const app = createApp(App);

const pinia = createPinia();
app.use(pinia);




const vuetify = createVuetify({
    components,
    directives,
});

app.use(vuetify);
app.use(router);

app.mount('#app');
