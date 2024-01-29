package com.example.order.mapper;

import com.example.order.entity.Record;
import com.example.order.entity.RecordDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.Date;
import java.util.List;


@Mapper
public interface RecordMapper {
    List<Record> RecordById(int uid);

    boolean addRecord(Record record);

    boolean delRecord(Date order_time);

    List<RecordDetail> DetailById(int uid);

    List<RecordDetail> AllDetail();



}
