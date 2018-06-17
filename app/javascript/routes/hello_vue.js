import Vue from 'vue';
import Router from 'vue-router';
import ShowMessage from '../component/message.vue';

Vue.use(Router);

export default new Router({
  routes: [
    { path: '', component: ShowMessage },
  ],
});
