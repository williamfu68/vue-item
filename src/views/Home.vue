<template>
  <div>
    <!--轮播图-->
    <van-swipe class="my-swipe" :autoplay="5000" indicator-color="white">
        <van-swipe-item v-for = "item in imgList" :key = "item.id">
        <img :src = "'/storage/swipe2/'+ item.pic">
    </van-swipe-item>
    </van-swipe>
    <!--六宫格-->
    <ul class="mui-table-view mui-grid-view mui-grid-9">
        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/home/newslist">
                <img src="../assets/img/news.png" alt="">
                <div class="mui-media-body">新闻资讯</div></router-link></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="../assets/img/picture.png" alt="">
                <div class="mui-media-body">图片分享</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="../assets/img/goods.png" alt="">
                <div class="mui-media-body">商品购买</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="../assets/img/message.png" alt="">
                <div class="mui-media-body">留言反馈</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="../assets/img/video.png" alt="">
                <div class="mui-media-body">视频专区</div></a></li>
        <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                <img src="../assets/img/contact.png" alt="">
                <div class="mui-media-body">联系我们</div></a></li>
    </ul> 
  </div>
</template>

<script>
import { Toast } from 'mint-ui'
export default {
    data() {
        return {
            imgList:[
                // {id:1,pic:require('../assets/img/slideShow_01.jpg')},
                // {id:2,pic:require('../assets/img/slideShow_02.jpg')},
                // {id:3,pic:require('../assets/img/slideShow_03.jpg')}
            ]
        }
    },
    created() {
        this.getSwipe();
    },
    methods:{
        getSwipe() {
            this.axios.get('/api/getSwipe').then(res=>{
                if(res.status == 200) {
                    // console.log(res.data);
                    this.imgList = res.data;
                } else {
                    Toast('轮播图加载失败!');
                }
            })
        }
    }
}
</script>

<style lang = "less" scoped>
    .my-swipe{
        img{
            width:100%;
        }
    }
    .mui-grid-view.mui-grid-9{
        background-color:#fff;
        border:none;
    }
    
    .mui-grid-view.mui-grid-9 .mui-table-view-cell{
        border:0;
        img{
            width:32px;
            height:32px;
        }
        .mui-media-body{
            font-size:12px;
        }
    }
    
</style>