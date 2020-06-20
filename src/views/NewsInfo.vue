<template>
  <div>
    <h3>新闻详情 -- {{ id }}</h3>
  </div>
</template>

<script>
export default {
    data() {
        return {
            id:this.$route.params.id //将 URl地址中传过来的 id值,挂载到data身上,方便以后调用
        }
    }
}
</script>

<style>

</style>