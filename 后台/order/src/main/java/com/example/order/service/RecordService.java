package com.example.order.service;

import com.example.order.entity.Record;
import com.example.order.entity.RecordDetail;
import com.example.order.mapper.RecordMapper;
import com.example.order.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service
public class RecordService {
    @Autowired
    private RecordMapper recordMapper;

    public List<RecordDetail> AllRecord() {
        return recordMapper.AllDetail();
    }

    public List<RecordDetail> DetailById(int uid) {
        return recordMapper.DetailById(uid);
    }

    public boolean addRecord(Record record) {
        return recordMapper.addRecord(record);
    }

    public boolean delRecord(Date order_time) {
        return recordMapper.delRecord(order_time);
    }


}
