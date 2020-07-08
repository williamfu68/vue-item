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
// import { Header, Button, Lazyload } from 'mint-ui'
import MintUI from "mint-ui" //使用懒加载时需要完整引入
import { Swipe, SwipeItem } from 'vant'
import VuePreview from 'vue-preview';

// Vue.component(Header.name, Header)
// Vue.component(Button.name, Button)
Vue.use(VueRouter)
Vue.use(VueAxios, axios)
Vue.use(MintUI)
Vue.use(Swipe)
Vue.use(SwipeItem);
// Vue.use(Lazyload)
//安装vue-preview图片预览插件
Vue.use(VuePreview)
Vue.filter('dataFormat', function(dataStr, pattern = "YYYY-MM-DD HH:mm:ss") {
    return moment(dataStr).format(pattern);
})


Vue.config.productionTip = false
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';
new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app');