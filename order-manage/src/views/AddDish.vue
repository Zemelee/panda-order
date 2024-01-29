<template>
  <div class="add-dish-wrapper">
    <Header /><!-- 引入Header.vue组件 -->
    <div class="add-dish">
      <el-form
        :model="ruleForm"
        ref="ruleForm"
        label-width="100px"
        class="demo-ruleForm"
        :rules="rules"
      >
        <el-row>
          <el-col :xs="24" :sm="12">
            <el-form-item label="菜品名字" prop="dishname">
              <el-input v-model="ruleForm.dishname"></el-input>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="12">
            <el-form-item label="价格" prop="price">
              <el-input v-model.number="ruleForm.price"></el-input>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="12">
            <el-form-item label="种类" prop="category">
              <el-select v-model="ruleForm.category" placeholder="请选择">
                <el-option label="肉菜" value="1"></el-option>
                <el-option label="素菜" value="2"></el-option>
                <el-option label="汤" value="3"></el-option>
                <el-option label="饭" value="4"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :xs="24" :sm="12">
            <el-form-item label="状态" prop="state">
              <el-select v-model="ruleForm.state" placeholder="请选择">
                <el-option label="上架" value="2"></el-option>
                <el-option label="下架" value="1"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :xs="24">
            <el-form-item label="简介" prop="description">
              <el-input
                type="textarea"
                v-model="ruleForm.description"
                :autosize="{ minRows: 4, maxRows: 8 }"
              ></el-input>
            </el-form-item>
          </el-col>
          <el-col :xs="24">
            <el-form-item label="图片" prop="picurl">
              <el-input
                type="textarea"
                v-model="ruleForm.picurl"
                :autosize="{ minRows: 4, maxRows: 1000 }"
              ></el-input>
            </el-form-item>
          </el-col>
          <el-col :xs="24">
            <el-form-item label="详情" prop="details">
              <el-input
                type="textarea"
                v-model="ruleForm.details"
                :autosize="{ minRows: 4, maxRows: 8 }"
              ></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-form-item class="button-group">
          <el-button type="primary" :disabled="false" @click="submitForm"
            >提交</el-button
          >
          <el-button type="primary" :disabled="false" @click="resetForm"
            >重置</el-button
          >
          <el-button type="primary" :disabled="false" @click="Handclick"
            >退出</el-button
          >
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
import request from "@/api/request";
import Header from "@/components/Header.vue"; // 引入Header.vue组件
export default {
  name: "AddDish",
  data() {
    return {
      ruleForm: {
        dishname: "",
        price: "",
        category: "",
        description: "",
        state: "",
        picurl: "",
        details: "",
      },
      rules: {
        dishname: [
          { required: true, message: "请输入菜品名字", trigger: "blur" },
        ],
        price: [
          { required: true, message: "请输入价格", trigger: "blur" },
          { type: "number", message: "请输入数字" },
        ],
        category: [
          { required: true, message: "请选择种类", trigger: "change" },
        ],
        description: [
          { required: true, message: "请输入详情", trigger: "blur" },
        ],
        state: [{ required: true, message: "请选择状态", trigger: "change" }],
      },
      isDisabled: true,
    };
  },
  components: {
    Header,
  },

  methods: {
    resetForm() {
      this.$refs.ruleForm.resetFields();
      this.isDisabled = true;
    },
    Handclick() {
      this.$confirm('退出到state页面, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          window.location.href = "/state";
          this.$message({
            type: 'success',
            message: '退出成功!',
          });
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '取消退出'
          });          
        });
    },
    submitForm() {
      request.get("/adddish", {
        params: {
          dishname: this.ruleForm.dishname,
          price: this.ruleForm.price,
          category: this.ruleForm.category,
          description: this.ruleForm.description,
          state: this.ruleForm.state,
          picurl: this.ruleForm.picurl,
          details: this.ruleForm.details,
        },
      });
      this.$alert("是否向菜单添加菜品", "添加确定", {
        confirmButtonText: "确定",
        callback: (success) => {
          this.$message({
            type: "success",
            message: `添加成功`,
          });
        },
      })
        .then((response) => {
          console.log(this.ruleForm);
          console.log("success:", response);
          // 做出相应操作，比如重置表单或者跳转到其他页面
        })
        .catch((error) => {
          console.log(this.ruleForm);
          console.log("err:", error);
          // 处理错误信息
        });
    },
  },
};
</script>

<style scoped>
.add-dish-wrapper {
  width: 100%;
  height: 100%;
  background-color: #f2f2f2;
}

.add-dish {
  margin: 20px auto;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
  padding: 30px;
}

.add-dish .el-row {
  margin-left: 0px;
  margin-right: 0px;
}

.add-dish .el-col {
  padding-left: 20px;
  padding-right: 20px;
}

.add-dish .avatar-uploader {
  width: 120px;
  height: 120px;
  line-height: 120px;
  text-align: center;
  border-radius: 50%;
  background-color: #eee;
  border: 1px dashed #666;
  cursor: pointer;
  overflow: hidden;
}

.add-dish .avatar {
  width: 120px;
  height: 120px;
  display: block;
}

.add-dish .avatar-uploader-icon {
  font-size: 28px;
  color: #666;
}

.add-dish .el-button-group {
  margin-top: 20px;
}

.add-dish .el-button {
  margin-right: 10px;
}

.add-dish .button-group {
  text-align: center;
}
</style>
