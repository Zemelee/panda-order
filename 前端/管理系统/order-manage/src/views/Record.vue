<template>
  <div>
    <Header />
    <el-table
      v-if="paginatedData.length > 0"
      style="width: 100%"
      :data="paginatedData"
      :default-sort="{ prop: 'date', order: 'descending' }"
    >
      <el-table-column fixed prop="user_id" label="用户ID" sortable width="200">
      </el-table-column>
      <el-table-column
        fixed
        prop="order_time"
        label="日期"
        sortable
        width="300"
      >
      </el-table-column>
      <el-table-column prop="dish_name" label="菜品" width="200">
      </el-table-column>
      <el-table-column prop="price" label="订单金额" width="200">
      </el-table-column>
      <el-table-column label="操作" width="200">
        <template slot-scope="scope">
          <el-button @click="handleClick(scope.row)" type="text" size="middle"
            >查看</el-button
          >
          <el-button @click="handleDelete(scope.row)" type="text" size="middle">
            删除
          </el-button>
        </template>
      </el-table-column>
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
  name: "Record",
  data() {
    return {
      tableData: [], //数组去存储数据库的数据
      tableDataCopy: [],
      code: "123456",
      code1: "",
      pageSize: 10, // 每页显示的记录数
      currentPage: 1, // 当前页码
      //   paginatedData:[],
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
    handleClick(row) {
      // console.log(row);
      this.$alert(
        `菜品：${row.dish_name} ——金额：${row.price}——\
            日期：${row.order_time}`,
        {
          confirmButtonText: "确定",
          callback: (action) => {
            this.$message({
              type: "info",
              message: `record: ${action}`,
            });
          },
        }
      );
    },
    handleDelete(row) {
      this.$confirm("确定删除该记录?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(() => {
          // 发送删除请求
          request
            .delete(`/delrecord?ordertime=${row.order_time}`)
            .then((response) => {
              console.log(response.data);
              // 从表格中删除该条记录
              const index = this.tableData.indexOf(row);
              if (index !== -1) {
                this.tableData.splice(index, 1);
              }
            })
            .catch((error) => {
              console.log(error);
            });
        })
        .catch(() => {
          // 点击取消按钮后的操作
        });
    },
    handlePageChange(newPage) {
      this.currentPage = newPage;
    },
  },
  //从数据库取数据
  created() {
    request
      .get("/alldetail")
      .then((response) => {
        console.log(response);
        // this.tableData = response.data.map((item) =>
        let sortedData = response.data
          .map((item) => {
            // console.log(item.ordertime);
            // 将 order_time 字段格式化
            item.order_time = new Date(item.order_time)
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
            return new Date(b.order_time) - new Date(a.order_time);
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
    