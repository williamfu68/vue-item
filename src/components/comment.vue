<template>
  <div class = "cmt-container">
    <h1>发表评论</h1>
    <hr>
    <textarea placeholder = "请输入您的评论（最多120字）" maxlength="120" v-model= "msg"></textarea>
    <mt-button type = "primary" szie = "large" style = "width:100%" @click = "postComment">发表评论</mt-button>
    
    <div class="cmt-list">
        <div class="cmt-item" v-for = "(item,i) in commentsList" :key = "i">
            <div class="cmt-title">
            <span>第{{i+1}}楼&nbsp;&nbsp;用户：{{item.user_name}}</span>
            <span>发表时间：{{item.add_time}}</span>
            </div>
            <div class="cmt-body">
            {{item.content}}
            </div>
        </div>
    </div>
    
    <mt-button type = "danger" szie = "large" plain style = "width:100%" @click = 'getMore'>加载更多</mt-button>
  </div>
</template>

<script>
import { Toast } from 'mint-ui'
export default {
    data() {
        return {
            commentsList:[
                // {   
                //     id: 1,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 2,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 3,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 4,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 5,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 6,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 7,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 8,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 9,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                // {   
                //     id: 10,
                //     user_name: "匿名用户",
                //     add_time: "2020-07-04 12:12:12",
                //     content: "大道无垠，精诚致远", 
                // },
                
            ],//所有评论数据
            pageIndex:1,//默认展示第一页数据
            msg:'' //评论输入的内容
        }
    },
    created() {
        this.getComments();
    },
    methods:{
        getComments() {
            this.axios.get('/api/getComments' + this.id + '/pageIndex=' + this.pageIndex).then(res=>{
                if(res.status == 200){
                    this.commentsList = this.commentsList.concat(res.data);
                    // console.log(this.commentsList);
                } else {
                    Toast('获取评论失败！');
                }
            }).catch(err=>{
                // Toast('获取评论失败！');
                console.log(err);
            }) 
        },
        getMore() {
            this.pageIndex++;
            this.getComments();
        },
        postComment() {
            if(this.msg.trim().length == 0) {
                return Toast('评论内容不能为空！');
            }
            //参数1： 请求的的URL地址
            //参数2： 提交给服务器的数据对象{content:this.msg}
            //参数3： 定义提交时候，表单中数据的格式 {emulatedJSON:true}
            this.axios.post('/api/postComments',
            {content:this.msg.trim()},
            {emulateJSON:true}
            ).then(res=> {
                if(res.status == 200) {
                    //1.拼接出一个评论对象
                    // console.log(res); //1
                    var cmt = {
                        user_name:'匿名用户',
                        add_time:'2020-07-04 12:12:12',
                        content:this.msg.trim()
                    };
                    this.commentsList.unshift(cmt);
                    this.msg = '';
                }
            })
        }
        
    },
    props:['id']
}
</script>

<style lang = "less">
    .cmt-container{
        
        h1{
            font-size:18px;
        }
        textarea{
            font-size:14px;
            margin:0;
        }
        .cmt-list{
            margin:5px 0;
            .cmt-item{
                font-size:15px;
                .cmt-title{
                    font-size:12px;
                    line-height: 30px;
                    background-color:#ccc;
                    display: flex;
                    justify-content: space-between;
                    
                }
                .cmt-body{
                    line-height: 35px;
                    text-indent: 1em;
                    font-size:13px;
                    text-align: center;
                }
            }
        }
    }
</style>