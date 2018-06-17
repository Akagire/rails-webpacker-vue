import 'babel-polyfill';
import Vue from 'vue';
import Store from '../store/hello_vue';
import Router from '../routes/hello_vue';
import App from '../app.vue';

const el = document.body.appendChild(document.createElement('app'));
const vm = new Vue({
  el,
  store: Store,
  router: Router,
  render: h => h(App),
});

window.vm = vm;
