package com.example.order.mapper;

import com.example.order.entity.MoneyRecord;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@Mapper
public interface MoneyRecordMapper {

    List<MoneyRecord> MoneyRecordById(int uid);

    boolean addMoneyRecord(MoneyRecord moneyRecord);


}
