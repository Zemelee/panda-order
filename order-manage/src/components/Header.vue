<template>
  <div>
    <el-menu
      :router="true"
      :default-active="activeIndex"
      class="el-menu-demo"
      mode="horizontal"
    >
      <!-- @select="handleSelect" -->
      <el-menu-item index="/state">
        <router-link to="/state" style="text-decoration: none">
          管理菜品
        </router-link>
      </el-menu-item>

      <el-menu-item v-if="!admin" index="/AddDish">
        <router-link to="/AddDish" style="text-decoration: none">
          菜品上新
        </router-link>
      </el-menu-item>

      <el-menu-item index="/Record">
        <router-link to="/Record" style="text-decoration: none">
          订单记录
        </router-link>
      </el-menu-item>
      <el-menu-item index="/LoginLog">
        <router-link to="/LoginLog" style="text-decoration: none">
          登录日志
        </router-link>
        </el-menu-item
      >
      <el-submenu index="5">
        <template slot="title">数据统计</template>
        <el-menu-item index="/Salesinfo"
          ><router-link to="/Salesinfo" style="text-decoration: none">
            销售总额
          </router-link></el-menu-item
        >
        <el-menu-item index="/DaySales"
          ><router-link to="/DaySales" style="text-decoration: none">
            日销售量
          </router-link></el-menu-item
        >
      </el-submenu>

      <el-menu-item index="" style="float: right">
        <el-popover placement="top" width="160" v-model="visible">
          <p>你要退出嘛？亲</p>
          <div style="text-align: right; margin: 0">
            <el-button size="mini" type="text" @click="visible = false"
              >取消</el-button
            >
            <el-button type="primary" size="mini" @click="handleAvatarClick"
              >确定</el-button
            >
          </div>
          <el-button
            slot="reference"
            style="
              background: url('https://www.beihaiting.com/uploads/allimg/160409/10723-16040913310a24.jpg');
              background-size: cover;
              width: 50px;
              height: 50px;
              border-radius: 50%;
            "
          ></el-button>
        </el-popover>
      </el-menu-item>
    </el-menu>
  </div>
</template>


<script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
<script>
import { Menu, MenuItem, Submenu } from "element-ui";
export default {
  components: { Menu, MenuItem, Submenu },
  data() {
    return {
      activeIndex: "/state",
      visible: false,
      adminStorage: 0,
      admin: true,
    };
  },
  created() {
    // 监听路由变化
    this.$router.afterEach((route) => {
      this.activeIndex = route.path;
    });
    this.adminStorage = localStorage.getItem("admin");
    //如果storage为1则开启相关权限
    if (this.adminStorage == "1") {
      this.admin = false;
    }
  },
  mounted() {
    // 初始化菜单项的激活状态
    this.setActiveIndex();
    // 监听路由变化
    this.$router.afterEach(this.setActiveIndex);
  },
  methods: {
    handleClick(event) {
      if (event.target.href === window.location.href) {
        event.stopPropagation(); // 防止冒泡
        console.log("当前链接和当前页面一致，不需要进行跳转！");
      }
    },
    setActiveIndex() {
      this.activeIndex = this.$route.path;
    },
    handleAvatarClick() {
      // localStorage.setItem("isAdmin", false)
      localStorage.removeItem("isAdmin");
      // location.reload()
      this.$router.push("/login");
      // 隐藏弹窗
      this.visible = false;
    },
  },
};
</script>

<style>
</style>