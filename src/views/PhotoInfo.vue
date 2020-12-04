<template>
  <div class = "photoinfo-container">
    <h1>{{ photoInfo.title }}</h1>
    <p class="subtitle">
    <span>发表时间:{{ photoInfo.add_time }}</span>
    <span>点击:{{ photoInfo.click }}次</span>
    </p>
    <hr>
    <!--缩略图区域-->
         <vue-preview :slides="thumbnail" @close="handleClose"></vue-preview>

    <!--图片内容区域-->
    <div class="content">
    {{ photoInfo.content }}
    </div>

    <!--评论子组件-->
    <cmt-box :id = "this.id"></cmt-box>
  </div>
</template>

<script>
import { Toast } from 'mint-ui';
import comment from '../components/comment'
export default {
    data() {
        return {
            id:this.$route.params.id, //从路由获取到的图片id
            photoInfo:{
                // id: 1,
                // title: "标题1",
                // add_time: "2020-07-07 12:12:12",
                // click: "0",
                // content: "图片详情描述图片详情描述图片详情描述图片详情描述图片详情描述图片详情描述图片详情描述图片",
            }, //图片详情
            thumbnail:[] //缩略图
        }
    },
    created() {
        this.getPhotoInfo();
        this.getThumbnail();
    },
    methods: {
        getPhotoInfo() {
            this.axios.get('/api/getPhotoInfo/' + this.id).then(res=>{
                if(res.status == 200) {
                    this.photoInfo = res.data;
                } else {
                    Toast('获取图片详情失败！');
                }
            }).catch(err=>{
                console.log(err);
            })
        },
        getThumbnail() {
            this.axios.get('/api/getThumbnail/' + this.id).then(res=>{
                if(res.status == 200) {
                    this.thumbnail.push(res.data);
                    this.thumbnail.forEach(item=>{
                        item.msrc = '/storage/imgList/' + item.msrc
                        item.src = '/storage/imgList/' + item.src
                    })
                } else {
                    Toast('获取缩略图失败！');
                }
            }).catch(err=>{
                // Toast('获取缩略图失败！');
                console.log(err);
            })
            //循环每个图片数据，补全图片的宽和高
        },
        handleClose () {
        // console.log('close event');
      }
    },
    components:{
        'cmt-box':comment
    }
}
</script>

<style lang = "less">
    .photoinfo-container{
        padding:3px;
        h1{
            font-size:18px;
            color:#26a2ff;
            text-align: center;
            margin:15px 0;
        }
        .subtitle{
            display:flex;
            justify-content: space-between;
        }
        .content{
            font-size:14px;
            line-height: 30px;
        }
        .my-gallery{
            text-align: center;
            width:100%;
            margin:-5px 0 -10px 0;
            img{
                width:100%;
                height:100%;
                vertical-align: middle;
            }
        }
    }
</style>