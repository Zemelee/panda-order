package com.example.order.controller;


import com.example.order.entity.MoneyRecord;
import com.example.order.service.MoneyRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@RestController
public class MoneyRecordController {
    @Autowired
    private MoneyRecordService moneyRecordService;
    @CrossOrigin
    @RequestMapping("moneyrecord")
    public List<MoneyRecord> MoneyRecordById(@RequestParam("uid") int uid) {
        List<MoneyRecord> moneyRecords = moneyRecordService.MoneyRecordById(uid);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        for (MoneyRecord moneyRecord : moneyRecords) {
            Date dealTime = moneyRecord.getDeal_time();
            LocalDateTime localDateTime = LocalDateTime.ofInstant(dealTime.toInstant(), ZoneId.systemDefault());
            String formattedTime = localDateTime.format(formatter);
            moneyRecord.setFormattedDealTime(formattedTime);
        }

        return moneyRecords;
    }

}
