<template>
  <div>
    <ul class="mui-table-view">
        <li class="mui-table-view-cell mui-media" v-for = "item in NewsList" :key = "item.id">
            <router-link :to="'/home/newsinfo/' + item.id">
                <img class="mui-media-object mui-pull-left" :src="'/storage/NewsListImg/' + item.pic">
                <div class="mui-media-body">
                    <h4>{{ item.title }}</h4>
                    <p class='mui-ellipsis'>
                    <span>发表时间 : {{ item.add_time | dataFormat }}</span>
                    <span>点击:{{ item.click }}次</span>
                    </p>
                </div>
            </router-link>
        </li>
    </ul>
  </div>
</template>

<script>
import { Toast } from 'mint-ui'
export default {
    data() {
        return {
            NewsList:[]
        }
    },
    created() {
        this.getNewsList();
    },
    methods:{
        getNewsList() {
            this.axios.get('/api/getNewsList').then(res=>{
                if(res.status == 200) {
                    // console.log(res.data);
                    this.NewsList = res.data;
                } else {
                    Toast('获取新闻列表失败');
                }
            })
        }
    }
}
</script>

<style lang = "less" scoped>
    .mui-table-view{
            .mui-ellipsis{
                font-size:13px;
                span {
                    color:rgb(23, 23, 163);
                }
                display: flex;
                justify-content: space-between;
            }
            h4 {
                    font-size:15px;
                    overflow: hidden;
                    text-overflow: ellipsis;
                }
    }
</style>