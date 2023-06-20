package com.example.order.service;

import com.example.order.entity.AdminLogin;
import com.example.order.mapper.AdminLoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AdminLoginServiceImpl implements AdminLoginService {

    private final AdminLoginMapper adminLoginMapper;

    @Autowired
    public AdminLoginServiceImpl(AdminLoginMapper adminLoginMapper) {
        this.adminLoginMapper = adminLoginMapper;
    }

    @Override
    public boolean AddLogin(String account, String loginIp, Date date) {
        return adminLoginMapper.AddLogin(account, loginIp, date);
    }

    @Override
    public List<AdminLogin> getLogs(int page, int pageSize) {
        int offset = (page - 1) * pageSize;
        return adminLoginMapper.getLogs(offset, pageSize);
    }
}
