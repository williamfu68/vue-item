import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Member from '../views/Member.vue'
import Shopcar from '../views/Shopcar.vue'
import Search from '../views/Search.vue'

import NewsList from '../views/NewsList'
import NewsInfo from '../views/NewsInfo'
import PhotoList from '../views/PhotoList'
import PhotoInfo from '../views/PhotoInfo'
import GoodsList from '../views/GoodsList'


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
    },
    {
        path: '/home/photolist',
        component: PhotoList
    },
    {
        path: '/home/photoinfo/:id',
        component: PhotoInfo
    },
    {
        path: '/home/goodslist',
        component: GoodsList
    }
]

const router = new VueRouter({
    mode: 'history',
    base: process.env.BASE_URL,
    routes
})

export default router