import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Member from '../views/Member.vue'
import Shopcar from '../views/Shopcar.vue'
import Search from '../views/Search.vue'

import NewsList from '../views/NewsList'
import NewsInfo from '../views/NewsInfo'


Vue.use(VueRouter)

const routes = [{
        path: '/',
        redirect: '/home'
    },
    {
        path: '/home',
        component: Home
    },
    {
        path: '/member',
        component: Member
    }, {
        path: '/shopcar',
        component: Shopcar
    }, {
        path: '/search',
        component: Search
    },
    {
        path: '/home/newslist',
        component: NewsList
    },
    {
        path: '/home/newsinfo/:id',
        component: NewsInfo
    }
]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})

export default router