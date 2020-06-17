import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//按需导入 Mint-UI组件
import { Header } from 'mint-ui';
//导入所需样式
import 'mint-ui/lib/style.css';
import './assets/lib/dist/css/mui.min.css';
Vue.component(Header.name, Header);
Vue.config.productionTip = false

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app');