package com.example.order.mapper;

import com.example.order.entity.Admin;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {
    Admin AdminLogin(String admin_name, String admin_pwd);

}
