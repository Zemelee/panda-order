package com.example.order.service;


import com.example.order.entity.MoneyRecord;
import com.example.order.mapper.MoneyRecordMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MoneyRecordService {
    @Autowired
    private MoneyRecordMapper moneyRecordMapper;

    public List<MoneyRecord> MoneyRecordById(int uid) {
        return moneyRecordMapper.MoneyRecordById(uid);
    }

    public boolean addMoneyRecord(MoneyRecord moneyRecord) {
        System.out.println("service:" + moneyRecord);
        return moneyRecordMapper.addMoneyRecord(moneyRecord);

    }
}
