package com.example.order.service;

import com.example.order.entity.AdminLogin;

import java.util.Date;
import java.util.List;

public interface AdminLoginService {
    // 新增记录
    boolean AddLogin(String account, String loginIp, Date data);

    // 查询所有记录
    List<AdminLogin> getLogs(int page, int pageSize);
}
