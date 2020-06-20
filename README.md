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