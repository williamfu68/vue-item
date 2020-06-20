import Vue from 'vue'
import App from './App.vue'
//导入index.js路由模块,把路由对象挂载到 VM身上
import router from './router'
import store from './store'

//导入路由的包
import VueRouter from 'vue-router'
import axios from 'axios'
import VueAxios from 'vue-axios'
//导入node格式化时间的插件
import moment from 'moment'

//导入所需样式
import 'mint-ui/lib/style.css'
import './assets/lib/dist/css/mui.min.css'
import './assets/lib/examples/hello-mui/css/icons-extra.css'
import './assets/css/index.less'
import 'vant/lib/index.css'

//按需导入 Mint-UI组件
import { Header } from 'mint-ui'
import { Swipe, SwipeItem } from 'vant'

Vue.component(Header.name, Header)
Vue.use(VueRouter)
Vue.use(VueAxios, axios)
Vue.use(Swipe)
Vue.use(SwipeItem)
Vue.filter('dataFormat', function(dataStr, pattern = "YYYY-MM-DD HH:mm:ss") {
    return moment(dataStr).format(pattern);
})


Vue.config.productionTip = false

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app');