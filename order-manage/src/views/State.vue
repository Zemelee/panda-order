<template>
  <div>
    <Header /><!-- 引入Header.vue组件 -->
    <div class="search-container">
      
      <el-input
        style="width: 300px;margin-left: 10px; margin-right: 10px;"
        type="text"
        placeholder="菜品搜索"
        v-model="text"
        maxlength="10"
        show-word-limit
        @input="filterData"
        @clear="filterData"
      ></el-input>
      <el-button type="primary">搜索</el-button>

    </div>
    <el-table
      v-if="paginatedData.length > 0"
      style="width: 100%"
      :data="paginatedData"
    >
      <el-table-column fixed prop="dish_id" label="序号" width="50">
      </el-table-column>
      <el-table-column label="图片" width="150">
        <template slot-scope="scope">
          <img
            :src="scope.row.picture_url"
            alt="reference picture"
            style="max-width: 100%; max-height: 100%"
          />
        </template>
      </el-table-column>
      <el-table-column prop="dish_name" label="菜品" width="120">
      </el-table-column>
      <el-table-column label="价格" width="90">
        <template slot-scope="scope">
          ￥<span
            v-html="scope.row.price"
            style="max-width: 100%; max-height: 100%"
          ></span>
        </template>
      </el-table-column>
      <el-table-column label="菜类" width="90">
        <template slot-scope="scope">
          <span v-if="scope.row.category === 1"><el-tag>荤菜</el-tag></span>
          <span v-if="scope.row.category === 2"><el-tag>素菜</el-tag></span>
          <span v-if="scope.row.category === 3"><el-tag>汤菜</el-tag></span>
          <span v-if="scope.row.category === 4"><el-tag>主食</el-tag></span>
        </template>
      </el-table-column>
      <el-table-column label="上下架情况" width="120">
        <template slot-scope="scope">
          <span v-if="scope.row.state === 1">已下架</span>
          <span v-if="scope.row.state === 2">展示中</span>
        </template>
      </el-table-column>
      <el-table-column prop="description" label="详情" width="100">
      </el-table-column>
      <el-table-column prop="likes" label="点赞数" width="100">
      </el-table-column>
      <el-table-column fixed="right" label="菜品删除" width="200">
        <template slot-scope="scope">
          <el-button type="text" @click="delDish(scope.row)"> 删除 </el-button>
        </template>
      </el-table-column>
      <el-table-column fixed="right" label="操作" width="180">
        <template slot-scope="scope">
          <el-button type="text" @click="editState(scope.row)">
            <!-- 根据 state 的值动态显示文本 -->
            <span v-if="scope.row.state === 1">去上架</span>
            <span v-else>去下架</span>
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-pagination
      v-model="currentPage"
      :page-size="pageSize"
      :total="alldish.length"
      layout="prev, pager, next"
      mode="background"
      @current-change="handlePageChange"
    />
  </div>
</template>
<script>
import md5 from "blueimp-md5";
import request from "@/api/request";
import Header from "@/components/Header.vue"; // 引入Header.vue组件
import { Message, MessageBox } from "element-ui";
export default {
  name: "state",
  data() {
    return {
      alldish: [],
      alldishCopy: [], // 新增属性
      pageSize: 5, //每页显示的数据条数
      currentPage: 1, //当前页码
      text: "",
    };
  },
  components: {
    Header,
  },
  watch: {
    alldish(newVal) {
      this.alldishCopy = [...newVal]; // 更新副本数组
      this.currentPage = 1; // 重置 currentPage
    },
  },
  computed: {
    paginatedData() {
      const start = (this.currentPage - 1) * this.pageSize;
      const end = start + this.pageSize;
      return this.alldishCopy.slice(start, end);
    },
  },
  methods: {
    detail(e) {},
    editState(e) {
      var Estate = e.state === 1 ? 2 : 1;
      var that = this;
      request
        .get("/updateDish", {
          params: {
            did: e.dish_id,
            state: Estate,
          },
        })
        .then((res) => {
          var index = that.alldish.indexOf(e);
          console.log(index);
          if (index !== -1) {
            const updatedData = { ...e, state: Estate }; // 创建一个新的对象，更新状态值
            this.$set(this.alldish, index, updatedData); // 用新的对象更新表格数据中该条数据的信息
          }
        })
        .catch((e) => {
          console.log("修改失败：", e);
        });
    },
    delDish(row) {
      const that = this;
      MessageBox.confirm(`确认删除菜品 ${row.dish_name} 吗？`, "删除", {
        type: "warning",
      })
        .then(() => {
          request
            .get("/deldish", {
              params: {
                did: row.dish_id,
              },
            })
            .then((res) => {
              const index = that.alldish.indexOf(row);
              that.alldish.splice(index, 1);
              Message({
                message: "删除成功",
                type: "success",
              });
            })
            .catch((e) => {
              console.log("删除失败：", e);
              Message({
                message: "删除失败，请稍后重试",
                type: "error",
              });
            });
        })
        .catch(() => {
          Message({
            message: "已取消删除",
            type: "info",
          });
        });
    },
    handlePageChange(newPage) {
      // 监听页码变化
      this.currentPage = newPage;
    },
    filterData() {//搜索框的输入和清除显示页面
      const filterText = this.text.trim().toLowerCase();
      if (!filterText) {
        this.alldishCopy = [...this.alldish];
      } else {
        this.alldishCopy = this.alldish.filter((item) => {
          return (
            item.dish_name.toLowerCase().includes(filterText) ||
            item.description.toLowerCase().includes(filterText)
          );
        });
      }
      // this.alldishCopy = [...this.alldish];
      this.currentPage = 1;
    },
  },

  beforeMount() {
    request
      .get("/getalldish")
      .then((e) => {
        console.log("菜品信息：", e);
        this.alldish = e.data;
        this.alldishCopy = [...e.data]; // 在这里将 alldish 复制到 alldishCopy 中
      })
      .catch((err) => {
        console.log("fail:", err);
      });
  },
};
</script>

<style>
.search-container {
  margin-bottom: 5px;
  padding: 0px;
  background-color: white;
  border-bottom: 1px solid #e6e6e6;
  display: flex;
  align-items: center;
}

.search-container el-input {
  width: 300px;
  /* margin: 0 auto;
  display: block; */
}
</style>
