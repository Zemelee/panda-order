<template>
  <div>
    <Header />
    <el-table
      v-if="paginatedData.length > 0"
      style="width: 100%"
      :data="paginatedData"
      :default-sort="{ prop: 'date', order: 'descending' }"
    >
      <el-table-column
        prop="loginId"
        label="登录编号"
        width="100"
      ></el-table-column>
      <el-table-column
        prop="account"
        label="用户名"
        width="100"
      ></el-table-column>
      <el-table-column
        prop="loginIp"
        label="登录IP"
        width="200"
      ></el-table-column>
      <el-table-column
        prop="loginTime"
        label="登录时间"
        width="200"
        sortable
      ></el-table-column>
                  
    </el-table>
    <el-pagination
      v-model="currentPage"
      :page-size="pageSize"
      :total="tableData.length"
      layout="prev, pager, next"
      mode="background"
      @current-change="handlePageChange"
    />
  </div>
</template>
  
  <script>
import request from "@/api/request";
import { ElMessageBox } from "element-ui";
import Header from "@/components/Header.vue"; // 引入Header.vue组件
export default {
  name: "LoginLog",

  data() {
    return {
      tableData: [], // 数组来存储数据库的数据
      tableDataCopy: [],
      code: "123456",
      code1: "",
      pageSize: 10, // 每页显示的记录数
      currentPage: 1, // 当前页码
    };
  },
  components: {
    Header,
  },
  watch: {
    tableData(newVal) {
      this.tableDataCopy = [...newVal]; // 更新副本数组
      this.currentPage = 1; // 重置 currentPage
    },
  },
  computed: {
    paginatedData() {
      const start = (this.currentPage - 1) * this.pageSize;
      const end = start + this.pageSize;
      return this.tableDataCopy.slice(start, end);
    },
  },
  methods: {
    handlePageChange(newPage) {
      this.currentPage = newPage;
    },
  },

  // 获取所有登录记录
  created() {
    request
      .get("/adminlogs", {
        params: {
          page: 1,
          size: 100,
        },
      })
      .then((response) => {
        console.log(response);
        // this.tableData = response.data
        let sortedData = response.data
          .map((item) => {
            // 将 loginTime 字段格式化
            item.loginTime = new Date(item.loginTime)
              .toLocaleString("zh-CN", {
                hour12: false,
                year: "numeric",
                month: "2-digit",
                day: "2-digit",
                hour: "2-digit",
                minute: "2-digit",
                second: "2-digit",
              })
              .replace(/\//g, "-");
            return item;
          })
          .sort((a, b) => {
            return new Date(b.loginTime) - new Date(a.loginTime);
          });
        this.tableData = sortedData;
        this.tableDataCopy = [...this.tableData];
      })
      .catch((error) => {
        console.log(error);
      });
  },
};
</script>