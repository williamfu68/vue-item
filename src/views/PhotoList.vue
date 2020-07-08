<template>
  <div>
    <!--顶部滑动条区域-->
    <div id="slider" class="mui-slider">
		<div id="sliderSegmentedControl" class="mui-scroll-wrapper mui-slider-indicator mui-segmented-control mui-segmented-control-inverted">
			<div class="mui-scroll">
				<a :class="['mui-control-item',item.id == 0 ? 'mui-active' : '']" v-for = "item of category" :key = "item.id" @tap = "getPhoto(item.id)">
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
            category:[],
            imgList:[]
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
        })
    },
    methods:{
        getAllCategory() {
            this.axios.get("http://127.0.0.1:8000/api/getAllCategory").then(res=>{
                if(res.status == 200) {
                    res.data.unshift({id:0,title:'全部'});
                    this.category = res.data;
                } else {
                    Toast('获取分类失败!');
                }
            }).catch(err=>{
                Toast('获取分类失败！');
                console.log(err);
            })
        },
        getPhoto(id) {
            this.axios.get('http://127.0.0.1:8000/api/getPhoto/' + id).then(res=>{
                if(res.status == 200) {
                    this.imgList = res.data;
                } else {
                    Toast('获取图片失败！');
                }
            }).catch(err=>{
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