import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from "@/components/dddddd/Home.vue";
import Movie from "@/components/dddddd/Movie.vue";
import About from "@/components/dddddd/About.vue";

Vue.use(VueRouter)
const router = new VueRouter({
  routes: [

    { path: '/', redirect: '/home' },
    { path: '/home', component: Home },
    { path: '/movie', component: Movie },
    {
      path: '/about', component: About,

    }

  ]
})
export default router
