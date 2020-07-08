<template>
  <div class="goods-list">
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    <div class="goods-item">
        <img src="/storage/goodsList/notebook9-flex.png">
        <h1 class="title">Samsung Galaxy Book Flex 950QCG-X01</h1>
        <div class="info">
        <p class="price">
            <span class="now">￥8999</span>
            <span class="old">￥9999</span>
        </p>
        <p class="sell">
        <span>热卖中</span>
        <span>仅剩60台</span>
        </p>
        </div>
    </div>
    
  </div>
</template>

<script>
export default {

}
</script>

<style lang = "less" scoped>
    .goods-list{
        display:flex;
        flex-wrap:wrap;
        padding:3px 7px;
        justify-content: space-between;
    }
    .goods-item{
        width:49%;
        border:1px solid #ddd;
        margin:3px 0;
        padding:2px;
        display:flex;
        flex-direction: column;
        justify-content: space-between;
        min-height:219px;
        img{
            width:100%;
        }
        .title{
            font-size: 15px;
        }
        .info{
            background-color: rgb(224, 224, 224);
            p{
                margin:0;
                padding:2px 5px;
            }
            .price{
                .now{
                    color:red;
                    font-size:15px;
                }
                .old{
                    text-decoration: line-through;
                    font-size:13px;
                    margin-left:10px;
                }
            }
            .sell{
                display:flex;
                justify-content: space-between;
            }
        }
    }
</style>