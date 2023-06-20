<template>
  <div id="app" style="display: flex; flex-direction: column; height: 100vh">
    <el-container style="flex: 1" >
      <el-main style="flex: auto"><router-view /> </el-main>
    </el-container>
    <el-footer style="margin-top: auto"
      >山野食物自清香，萝卜青菜丰收忙。</el-footer
    >
  </div>
</template>

<script>
import Header from "@/components/Header.vue";

export default {
  components: {
    Header,
  },
};
</script>


<style>
.el-header,
.el-footer {
  background-color: #eef2f3;
  color: #171111;
  text-align: center;
  line-height: 60px;
}

.el-aside {
  background-color: #d3dce6;
  color: #333;
  text-align: center;
  line-height: 200px;
}

.el-main {
  background-color: #e9eef3;
  color: #333;
  text-align: center;
  line-height: 120px;
}

body > .el-container {
  margin-bottom: 20px;
}

.el-container:nth-child(5) .el-aside,
.el-container:nth-child(6) .el-aside {
  line-height: 260px;
}

.el-container:nth-child(7) .el-aside {
  line-height: 320px;
}
</style>