// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from '@/router/index.js'
import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
import { Swipe, SwipeItem } from 'mint-ui';
Vue.component(Swipe.name, Swipe);
Vue.component(SwipeItem.name, SwipeItem);
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);
//import router from './router'
//import Qqq from './Qqq'
Vue.use(MintUI)
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',

  //router,
  //components: { App },
  //template: '<App/>'
  render: h => h(App),
  router
})