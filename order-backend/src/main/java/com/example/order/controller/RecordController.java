package com.example.order.controller;

import com.example.order.entity.Record;
import com.example.order.entity.RecordDetail;
import com.example.order.service.DishService;
import com.example.order.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;


@RestController
public class RecordController {
    @Autowired
    private RecordService recordService;
    @Autowired
    private DishService dishService;

    //根据用户id查询用户订单信息
    @CrossOrigin
    @RequestMapping("/dealrecord")
    public List<RecordDetail> RecordById(@RequestParam("uid") int uid) {
        return recordService.DetailById(uid);
    }
    @CrossOrigin
    @RequestMapping("/alldetail")
    public List<RecordDetail> AllDetail() {
        return recordService.AllRecord();
    }

    @CrossOrigin
    @RequestMapping("addrecord")
    public boolean addRecord(
            @RequestParam int dish_id,  //菜id
            @RequestParam int amount,   //菜数量
            @RequestParam int user_id) {
        Record record = new Record(dish_id, amount, user_id, new Date());
        dishService.salePlus(dish_id, amount);//新增销量
        return recordService.addRecord(record);
    }
    @CrossOrigin
    @RequestMapping("/delrecord")
    public boolean delRecord(@RequestParam("ordertime")
                             @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
                             Date order_time) {
        return recordService.delRecord(order_time);
    }


}
