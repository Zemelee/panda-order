package com.example.order.mapper;

import com.example.order.entity.History;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper  //HistoryById通过用户id查找订单记录
public interface HistoryMapper {
    List<History> HistoryById(int uid);

//    List<History> AllHistory();

}
