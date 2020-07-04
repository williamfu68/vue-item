<template>
  <div class = "newsinfo-container">
    <h1 class = "title">{{ newsInfo.title }}</h1>
    <div class = "subtitle">
      <span>发表时间：{{ newsInfo.add_time }}</span>
      <span>点击次数：{{ newsInfo.click }}</span>
    </div>
    <hr>
    <div class="content" v-html = "newsInfo.content">
    
    </div>
    <!--评论子组件-->
    <comment-box :id = "this.id"></comment-box>
  </div>
</template>

<script>
import { Toast } from 'mint-ui'
import comment from '../components/comment'
export default {
    data() {
        return {
            id:this.$route.params.id, //将 URl地址中传过来的 id值,挂载到data身上,方便以后调用
            newsInfo:[]
        }
    },
    created() {
      this.getNewsInfo();
    },
    methods:{
      getNewsInfo() {
        this.axios.get('/api/getNewsInfo' + this.id).then(res=>{
          if(res.status == 200) {
            this.newsInfo = res.data;
          } else {
              Toast('获取新闻详情页失败');
          }
        }).catch(err=>{
            console.log(err);
          })
      }
    },
    components:{
      'comment-box':comment
    }
}
</script>

<style lang = "less">
  .newsinfo-container{
    padding:0 4px;
    .title{
      font-size:16px;
      text-align: center;
      margin:15px 0;
    }
    .subtitle{
      display:flex;
      justify-content: space-between;
      font-size:14px;
      color:rgb(23, 23, 163);
    }
    .content{
      font-size:13px;
    }
    img{
      max-width: 100%;
      height:auto;
    }
  }
</style>