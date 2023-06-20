<template>
    <div class="menu">
      <el-menu
        background-color=""
        :default-active="activeIndex"
        class="el-menu-demo"
        mode="horizontal"
      >
        <el-menu-item index="1">
          <router-link :to="{ path: '/home/index' }">
            <el-menu-item index="1-1">首页</el-menu-item>
          </router-link></el-menu-item
        >
        <el-sub-menu :disabled="vendorNav" index="0">
          <template #title>摊贩中心</template>
          <router-link :to="{ path: '/home/submit' }">
            <el-menu-item index="2">申请摊位</el-menu-item>
          </router-link>
        </el-sub-menu>
        <el-sub-menu :disabled="managerNav" index="3">
          <template #title>城管中心</template>
          <router-link :to="{ path: '/home/echarts' }">
            <el-menu-item index="3-1">摊圈信息</el-menu-item>
          </router-link>
          <router-link :to="{ path: '/home/announce' }">
            <el-menu-item index="3-2">发布公告</el-menu-item>
          </router-link>
          <el-sub-menu index="3-3">
            <template #title>审核</template>
            <router-link :to="{ path: '/home/check/apply' }">
              <el-menu-item index="3-3-1">审核申请</el-menu-item>
            </router-link>
            <router-link :to="{ path: '/home/check/complain' }">
              <el-menu-item index="3-3-2">查看反馈</el-menu-item>
            </router-link>
          </el-sub-menu>
        </el-sub-menu>
  
        <router-link :to="{ path: '/home/explain' }">
          <el-menu-item index="4">系统说明</el-menu-item>
        </router-link>
      </el-menu>
    </div>
  </template>
  
  <script>
  // import { ref } from "vue";
  export default {
    data() {
      return {
        menus: [],
        activeIndex: "1",
        tableData: [],
        vendorNav: false,
        managerNav: false,
        id: 0,
      };
    },
    mounted() {
      console.log(this.$route.name);
      if(this.$route.name=="Explain"){
        this.activeIndex = "4"
      }else if(this.$route.name=="申请"){
        this.activeIndex = "2"
      }else if(this.$route.name=="发布公告"){
        this.activeIndex = "3-2"
      }else if(this.$route.name=="发布栏"){
        this.activeIndex = "1"
      }
      // (this.tableData = ref(Array.from({ length: 20 }).fill(this.item))),
      this.menus = [...this.$router.options.routes];
      setTimeout(() => {
        if (this.$store.state.identity == 1) {
          // 摊贩在登录，禁用城管功能
          this.managerNav = true;
        } else if (this.$store.state.identity == 2) {
          // 城管在登录，禁用摊贩功能
          this.vendorNav = true;
        } else if (this.$store.state.identity == 0) {
          // 超级管理员登陆
          this.vendorNav = false;
          this.managerNav = false;
        } else if (this.$store.state.identity == -1) {
          // 游客登陆
          this.vendorNav = true;
          this.managerNav = true;
          this.$message.warning("游客用户");
          console.log("this.$store.state.identity", this.$store.state.identity);
        }
      }, 1000);
    },
  
    methods: {},
  };
  </script>
  
  <style lang="less" scoped>
  el-menu {
    width: 900px;
    a {
      text-decoration: none;
    }
  }
  .layout-container-demo .el-header {
    position: relative;
  }
  .layout-container-demo .el-aside {
    background-color: #f2f3f5;
  }
  .layout-container-demo .el-menu {
    border-right: none;
  }
  .layout-container-demo .el-main {
    padding: 0;
  }
  .layout-container-demo .toolbar {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    height: 100%;
    right: 20px;
  }
  </style>