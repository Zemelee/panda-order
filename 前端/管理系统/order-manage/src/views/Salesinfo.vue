<template>
  <div>
    <Header />
    <div style="display: flex; justify-content: space-between">
      <h2>总销售额为：{{ totalRevenue }}元</h2>
    </div>
    <div id="bar-chart" :style="{ height: '400px', width: '100%' }"></div>
  </div>
</template>
  
<script>
import request from "@/api/request";
import { ElMessageBox } from "element-ui";
import Header from "@/components/Header.vue";
import * as echarts from "echarts";

export default {
  name: "Salesinfo",

  data() {
    return {
      tableData: [],
      totalRevenue: 0,
    };
  },

  components: {
    Header,
  },

  mounted() {
    const barChart = echarts.init(document.getElementById("bar-chart"));
    window.addEventListener("resize", () => {
      barChart.resize();
    });

    request
      .get("/getalldish")
      .then((response) => {
        const seriesData = response.data.map((item) => {
          const sales = item.sales;
          const price = item.price;
          const revenue = sales * price;
          return {
            value: sales,
            name: item.dish_name,
            price: price,
            revenue: revenue,
          };
        });

        // 计算总销售额并赋值给totalRevenue
        this.totalRevenue = seriesData.reduce(
          (acc, cur) => acc + cur.revenue,
          0
        );

        const option = {
          title: {
            text: "销售信息柱状图",
            left: "center",
            top: 20,
            textStyle: {
              color: "#555",
              fontSize: 18,
              fontWeight: "normal",
            },
          },
          tooltip: {
            trigger: "axis",
            axisPointer: {
              type: "shadow",
            },
          },
          // , "单价"
          legend: {
            data: ["销量", "单价", "销售额"],
            right: 0,
            top: "bottom",
          },
          grid: [
            {
              left: "3%",
              right: "15%",
              top: "20%",
              bottom: "10%",
              containLabel: true,
            },
          ],
          xAxis: [
            {
              type: "category",
              data: seriesData.map((item) => item.name),
              axisLabel: {
                interval: 0,
                rotate: 30,
              },
              boundaryGap: false,
              gridIndex: 0,
            },
          ],
          yAxis: [
            {
              type: "value",
              name: "销量",
              boundaryGap: [0, 0.01],
              minInterval: 1,
              splitLine: {
                show: true,
              },
              gridIndex: 0,
              offset: 30,
            },
            {
              type: "value",
              name: "",
              boundaryGap: [0, 0.01],
              axisLabel: {
                formatter: "{value}",
              },
              gridIndex: 0,
              offset: 40,
            },
            {
              type: "value",
              name: "销售额",
              boundaryGap: [0, 0.01],
              axisLabel: {
                formatter: "{value}",
              },
              gridIndex: 0,
              offset: 80,
            },
          ],
          series: [
            {
              name: "销量",
              type: "bar",
              barWidth: 10,
              data: seriesData.map((item) => item.value),
              xAxisIndex: 0,
              yAxisIndex: 0,
              label: {
                show: true,
                position: "top",
                formatter: "{c}",
              },
            },
            // {
            //   name: "单价",
            //   type: "bar",
            //   barWidth: 10,
            //   data: seriesData.map((item) => item.price),
            //   xAxisIndex: 0,
            //   yAxisIndex: 1,
            //   label: {
            //     show: true,
            //     position: "top",
            //     formatter: "{c}",
            //   },
            // },
            {
              name: "销售额",
              type: "bar",
              barWidth: 10,
              data: seriesData.map((item) => item.revenue),
              xAxisIndex: 0,
              yAxisIndex: 2,
              label: {
                show: true,
                position: "top",
                formatter: "{c}",
              },
            },
          ],
        };
        barChart.setOption(option);
      })
      .catch((error) => {
        console.log(error);
      });
  },

  methods: {},
};
</script>