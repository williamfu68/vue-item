<template>
  <div>
    <!--顶部滑动条区域-->
    <div id="slider" class="mui-slider">
		<div id="sliderSegmentedControl" class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
			<div class="mui-scroll">
				<a :class="['mui-control-item',item.id == 0 ? 'mui-active' : '']" v-for = "item in category" :key = "item.id" @click = "getPhoto(item.id)">
					{{ item.title }}
				</a>		
			</div>
		</div>
	</div>
    <!--图片列表区域-->
    <ul class = "photo-list">
        <router-link :to = "'/home/photoinfo/' + item.id" tag = "li" v-for="item in imgList" :key = "item.id">
            <img v-lazy="'/storage/imgList/' + item.pic">
            <div class="info">
                <h1 class="info-title">{{item.title}}</h1>
                <div class="info-body">{{item.abstract}}</div>
            </div>
        </router-link>
    </ul>
  </div>
</template>

<script>
// 1.导入mui的js文件
import mui from '../assets/lib/dist/js/mui.js'
import { Toast } from 'mint-ui';

export default {
    data() {
        return {
            category:[
                // {
                //     id:0,
                //     title:"全部"
                // },
                // {
                //     id:1,
                //     title:"家居生活"
                // },
                // {
                //     id:2,
                //     title:"摄影设计"
                // },
                // {
                //     id:3,
                //     title:"空间设计"
                // },
                // {
                //     id:4,
                //     title:"户型设计"
                // },
                // {
                //     id:5,
                //     title:"摄影器材"
                // },
                // {
                //     id:6,
                //     title:"摄影学习"
                // },
                // {
                //     id:7,
                //     title:"明星写真"
                // },
                // {
                //     id:8,
                //     title:"风景图片"
                // },
            ],
            imgList:[
                // {
                //     abstract: "图片描述",
                //     id: 1,
                //     pic: "imgList_01.png",
                //     title: "标题1"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 2,
                //     pic: "imgList_02.png",
                //     title: "标题2"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 3,
                //     pic: "imgList_03.png",
                //     title: "标题3"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 4,
                //     pic: "imgList_04.png",
                //     title: "标题4"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 5,
                //     pic: "imgList_05.png",
                //     title: "标题5"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 6,
                //     pic: "imgList_06.png",
                //     title: "标题6"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 7,
                //     pic: "imgList_07.png",
                //     title: "标题7"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 8,
                //     pic: "imgList_08.png",
                //     title: "标题8"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 9,
                //     pic: "imgList_09.png",
                //     title: "标题9"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 10,
                //     pic: "imgList_10.png",
                //     title: "标题10"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 11,
                //     pic: "imgList_11.png",
                //     title: "标题11"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 12,
                //     pic: "imgList_12.png",
                //     title: "标题12"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 13,
                //     pic: "imgList_13.png",
                //     title: "标题13"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 14,
                //     pic: "imgList_14.png",
                //     title: "标题14"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 15,
                //     pic: "imgList_15.png",
                //     title: "标题15"
                // },
                // {
                //     abstract: "图片描述",
                //     id: 16,
                //     pic: "imgList_16.png",
                //     title: "标题16"
                // },
            ]
        }
    },
    created(){
        this.getAllCategory();
        this.getPhoto(0);
    },
    mounted() { 
    //当组件中的DOM结构被渲染好并放到页面中后，会执行这个钩子函数
    //如果要操作DOM元素，最好在mounted里面，因为这时DOM元素是最新的
    //2.初始化滑动控件
    mui('.mui-scroll-wrapper').scroll({
	deceleration: 0.0005 //flick 减速系数，系数越大，滚动速度越慢，滚动距离越小，默认值0.0006
        });
    },
    methods:{
        getAllCategory() {
            this.axios.get("/api/getAllCategory").then(res=>{
                if(res.status == 200) {
                    res.data.unshift({id:0,title:'全部'});
                    this.category = res.data;
                } else {
                    Toast('获取分类失败!');
                }
            }).catch(err=>{
                // Toast('获取分类失败！');
                console.log(err);
            })
        },
        getPhoto(id) {
            this.axios.get('/api/getPhoto/' + id).then(res=>{
                if(res.status == 200) {
                    this.imgList = res.data;
                } else {
                    Toast('获取图片失败！');
                }
            }).catch(err=>{
                // Toast('获取图片失败！');
                console.log(err);
            })
        }
    }
}
</script>

<style lang = "less" scoped>
    /*解决chrome为了提高页滑动面流畅度而触发的bug*/
    * { 
        touch-action: pan-y; 
    } 
    
    ul{
        padding-bottom:0px;
        li{
            
            text-align: center;
            position: relative;
            img{
                width:100%;
                height:auto;
                border-radius: 4px;
                vertical-align: middle;
                margin-bottom:10px;
                
            }
            img[lazy=loading] {
            width: 40px;
            height: 300px;
            margin: auto;
            }
            .info{
                color:white;
                position: absolute;
                bottom:10px;
                width:100%;
                height:50px;
                
                background-color: rgba(0,0,0,.4);
                .info-title{
                    font-size:18px;
                }
                .info-body{
                    font-size:14px;
                }
            }
        }
    }
    
</style>