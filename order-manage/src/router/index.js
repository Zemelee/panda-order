import Vue from "vue";
import VueRouter from "vue-router";
import Login from "../views/Login.vue";
import State from "../views/State.vue";
import AddDish from "../views/AddDish.vue";
import Record from "../views/Record.vue";
import Test from "../components/Test.vue";
import LoginLog from "../views/LoginLog.vue";
import Salesinfo from "../views/Salesinfo.vue";
import DaySales from "../views/DaySales.vue";



Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "login",
    component: Login,
  },
  {
    path: "/test",
    name: "test",
    component: Test,
  },
  {
    path: "/state",
    name: "state",
    component: State,
  },
  {
    path: "/adddish",
    name: "adddish",
    component: AddDish,
  },
  {
    path: "/login",
    name: "login",
    component: function () {
      return import("../views/Login.vue");
    },
  },
  {
    path: "/record",
    name: "record",
    component: Record,
  },
  {
    path: "/loginlog",
    name: "loginlog",
    component: LoginLog,
  },
  {
    path: "/salesinfo",
    name: "salesinfo",
    component: Salesinfo,
  },
  {
    path: "/daysales",
    name: "daysales",
    component: DaySales,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

router.beforeEach((to, from, next) => {
  const isAdmin = localStorage.getItem("isAdmin");
  if (isAdmin) {
    next();
  } else {
    if (to.path == "/login") {
      next();
    } else {
      alert("先登录！");
      next("/login"); // 中止路由跳转
    }
  }
});
export default router;
