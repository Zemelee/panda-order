<template>
  <div>
    <Header />
    <div style="display: flex; justify-content: space-between">
      <h2>日销售额总览</h2>
    </div>
    <div id="line-chart" :style="{ height: '400px', width: '100%' }"></div>
  </div>
</template>
  
  <script>
import Header from "@/components/Header.vue";
import * as echarts from "echarts";
import request from "@/api/request";

export default {
  name: "DaySales",

  components: {
    Header,
  },

  data() {
    return {};
  },

  mounted() {
    const lineChart = echarts.init(document.getElementById("line-chart"));
    window.addEventListener("resize", () => {
      lineChart.resize();
    });
    request.get("/alldetail").then((response) => {
      const sevenDaysAgo = Date.now() - 864000000 * 7; // 获取10天前的时间戳，864000000 是一天的毫秒数604800000
      const orders = response.data;
      const dailySales = orders.reduce((result, order) => {
        const date = new Date(order.order_time).toLocaleDateString();
        // result[date] = (result[date] || 0) + order.price * order.amount;
        // 只统计10天以内的销售额
        if (new Date(order.order_time).getTime() > sevenDaysAgo) {
          result[date] = (result[date] || 0) + order.price * order.amount;
        }
        return result;
      }, {});

      const chartData = [];

      // 使用 $nextTick() 方法等待 DOM 更新完成
      this.$nextTick(() => {
        for (let i = 6; i >= 0; i--) {
          const date = new Date(Date.now() - 86400000 * i).toLocaleDateString();
          chartData.push({
            name: date,
            value: dailySales[date] || 0,
          });
        }

        const option = {
          title: {
            text: "近7天日销售额",
          },
          tooltip: {},
          xAxis: {
            data: chartData.map((item) => item.name),
          },
          yAxis: {},
          series: [
            {
              name: "销售总额",
              type: "line",
              data: chartData.map((item) => item.value),
            },
          ],
        };

        lineChart.setOption(option);
      });
    });
  },

  methods: {},
};
</script>
  