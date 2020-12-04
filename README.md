# vue-item

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

## 实现新闻详情页的页面布局和数据渲染

## 单独封装一个comment.vue评论子组件
1.先创建一个单独的comment.vue组件模板
2.在需要使用comment组件的页面中，先手动导入comment组件
3.在父组件中，使用components属性将刚才导入的comment组件注册为自己的子组件
4.将注册子组件时定义的名称以标签的形式在页面中引入即可

## 获取所有的评论数据显示到页面中

## 实现点击加载更多评论的功能
1.为加载更多按钮绑定点击事件,在事件中请求下一页
2.点击加载更多，让pageIndex++,然后重新调用this.getComments()方法重新获取新一页的数据
3.为了防止新数据覆盖老数据的情况，我们在点击加载更多的时候，每当获取到新数据，应该让老数据调用数组的concat方法，拼接上数组

## 提交代码

## 发表评论
1.把文本框做双向数据绑定
2.为发表按钮绑定一个事件
3.校验评论内容是否为空，如果为空则Toast提示用户评论内容不能为空
4.通过axios发送请求，把评论内容交给服务器
5.当发表评论后，重新刷新列表，以查看最新评论
6.如果调用 getComments方法重新刷新评论列表的话，可能只能得到最后一页的评论，前几页的评论获取不到
7.换一种思路：当评论成功后，手动拼接出一个最新的评论对象，然后调用数组的unshift方法，把最新的评论添加到data中commentsList的开头，这样就能完美实现刷新评论列表的需求

## 改造图片分析按钮为路由链接并显示对应的组件页面

## 绘制图片列表组件页面结构并美化样式
1.制作顶部的滑动条
2.制作底部图片列表
## 制作顶部滑动条的坑：
1.首先需要借助于MUI中的tab-top-webview-main.html
2.首先需要把slider区域的mui-fullscreen类去掉
3.滑动条无法正常触发滑动，通过检查官方文档发现这是JS组件，需要导入mui.js初始化一下
4.调用官方提供的方式去初始化:
mui('.mui-scroll-wrapper').scroll({
	deceleration: 0.0005 //flick 减速系数，系数越大，滚动速度越慢，滚动距离越小，默认值0.0006
});
5.刚进入图片分享页面的时候，滑动条无法正常工作，如果要初始化滑动条，必须要等DOM元素加载完毕，所以把初始化滑动条的代码搬到了mounted生命周期函数中
6.当滑动条调试好了，发现tabbar无法工作，这时我们需要在app.vue中把每个tabbar按钮样式中"mui-tab-item"重新改一下名字
7.获取所有分类,并渲染分类列表

## 制作图片列表
1.图片列表使用懒加载技术，使用mint-ui提供的现成的组件'lazy-load'
2.渲染图片列表

## 实现图片列表的懒加载和样式美化

## 实现了点击图片跳转到图片详情页面
1.在改造li成router-ink的时候，需要使用tag属性指定要渲染为哪种元素

## 实现详情页面的布局和美化，同时获取数据渲染页面

## 实现图片详情中缩略图的功能
1.使用vue-preview缩略图插件
2.获取到所有图片列表，然后使用v-for指令渲染数据
3.注意：img标签上的class不能去掉
4.注意：每个图片数据对象中，必须要有w 和 h属性

## 尝试在手机上进行项目的预览和测试
1.保证手机和开发项目的电脑处于同一个wifi环境中,让手机可以访问到电脑IP
2.打开项目package.json文件,在dev脚本中，添加一个 --host命令,把当前电脑的wifi ip地址设置为 --host的指令值
3.如何查看电脑wifi和ip地址？在cmd中断中运行'ipconfig'命令查看无线网的ip

2020-07-08 23:30

2020-12-04 14::05 最后提交