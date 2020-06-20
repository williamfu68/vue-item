# vue-item
# 用心去感受每一行代码
# 第三次修改
# 第四次修改
# 第五次修改
<<<<<<< HEAD

## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
>>>>>>> 3cd2022... init

## 制作首页App组件
1.完成 Header区域,使用的是 Mint-UI中的 Header组件
2.制作底部的 Tabbar区域,使用的是 MUI的 Tabbar.html
3.在中间区域放置一个 router-view来展示路由匹配到的组件

## 改造 tabbar为 router-link

## 设置路由高亮

## 点击 tabbar中的路由链接,展示对应的路由组件

## 制作首页轮播图布局

## 加载首页轮播图数据
1.获取数据 vue-resource / axios vue-axios
2.注意VueAxios和axios的引入顺序 必须先引入VueAxios再引入axios
3.数据库中创建存储轮播图名称的swipe表
4.在vue-item-api的public目录建立storage软连接
5.创建vue.config.js文件并建立代理
6.发送请求,使用v-for列表渲染每个item项目

## 改造九宫格区域样式

## 完成组件切换动画

## 改造新闻资讯路由链接

## 新闻资讯页面制作
1.绘制界面,使用 MUI中 media-list.html

2.使用axios获取数据
3.渲染真实数据
## 使用node格式化时间插件moment和Vue全局过滤器格式化时间

## 实现新闻资讯列表点击跳转到新闻详情
1.把列表中的每一项改造为router-link,同时在跳转时提供唯一的id 标识符
2.创建新闻详情的组件页面 NewsInfo.vue
3.在路由模块中,将新闻详情的路由地址和组件页面对应起来
