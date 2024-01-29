<template>
  <div class="login-container">
    <h3 class="login-title">管理员登录</h3>
    <el-form ref="form" :model="form" :rules="rules" label-width="0">
      <el-form-item prop="userName">
        <el-input
          v-model="form.userName"
          placeholder="请输入账号"
          prefix-icon="el-icon-user"
        ></el-input>
      </el-form-item>
      <el-form-item prop="password">
        <el-input
          show-password
          v-model="form.password"
          placeholder="请输入密码"
          prefix-icon="el-icon-lock"
        ></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" class="login-button" @click="submit"
          >登录</el-button
        >
      </el-form-item>
    </el-form>
    <!-- http://localhost:8080/api/adminlogin?adminname=admin1&adminpwd=e10adc3949ba59abbe56e057f20f883e -->
  </div>
</template>

<script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.min.js"></script>
<script>
import request from "@/api/request.js";
import md5 from "blueimp-md5";
export default {
  name: "login",
  data() {
    return {
      form: {
        userName: "admin1",
        password: "123456",
      },
      rules: {
        userName: [
          { required: true, message: "请输入账号", trigger: "blur" },
          {
            min: 1,
            max: 16,
            message: "长度应该在 1 到 16 个字符内",
            trigger: "blur",
          },
        ],
        password: [
          { required: true, message: "请输入密码", trigger: "blur" },
          {
            min: 6,
            max: 16,
            message: "长度应该在 6 到 16 个字符内",
            trigger: "blur",
          },
        ],
      },
    };  
  },
  methods: {
    submit() {
      this.$refs.form.validate((valid) => {
        if (valid) {
          let password = md5(this.form.password); // 对密码进行 md5 加密
          console.log("password:" + password);
          request
            .get("/adminlogin", {
              params: {
                adminname: this.form.userName,
                adminpwd: password,
              },
            })
            .then((res) => {
              if (res.data.status === 200) {
                setTimeout(() => {
                  this.$router.push('/state');
                  if (this.form.userName == "admin1") {
                    //管理员1的权限编号为 1
                    localStorage.setItem("admin", 1); 
                  } else {
                    localStorage.setItem("admin", 2);
                  }
                }, 1000);
                localStorage.setItem("isAdmin", true);
              } else {
                this.$message.error(res.data.message);
              }
            })
            .catch((err) => {
              console.log("fail:", err);
            });
        }
      });
    },
  },
};
</script>

<style scoped>
.login-container {
  max-width: 350px;
  margin: auto;
  margin-top: 5%;
  padding: 50px;
  border-radius: 5px;
  background-color: #fff;
}

.login-title {
  text-align: center;
  font-weight: bold;
  font-size: 24px;
  margin-bottom: -10px;
}

.el-form-item__label {
  font-size: 16px;
  color: #333;
}

.el-input__icon {
  color: #a0a0a0;
}

.login-button {
  width: 100%;
  font-size: 18px;
  margin-top: 20px;
  height: 50px;
  border-radius: 25px;
}
</style>
