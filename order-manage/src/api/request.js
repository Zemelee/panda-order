// 引入 axios
import axios from 'axios'
// 封装 baseURL
const request = axios.create({
    baseURL:"http://localhost:8080/"
})
// 向外暴露 request
export default request;
