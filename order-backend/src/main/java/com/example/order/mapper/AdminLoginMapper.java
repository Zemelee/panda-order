package com.example.order.mapper;

import com.example.order.entity.AdminLogin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

@Mapper
public interface AdminLoginMapper {

    //新增记录
    boolean AddLogin(String account, String ip, Date date);
    //查询所有记录
    List<AdminLogin> getLogs(@Param("offset") int offset, @Param("limit") int limit);



}
