package com.example.order.controller;


import com.example.order.entity.AdminLogin;
import com.example.order.mapper.AdminMapper;
import com.example.order.service.AdminLoginService;
import com.example.order.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@RestController
public class AdminController {
    @Autowired
    private AdminMapper adminMapper;
    private final AdminLoginService adminLoginService;

    @Autowired
    public AdminController(AdminMapper adminMapper, AdminLoginService adminLoginService) {
        this.adminMapper = adminMapper;
        this.adminLoginService = adminLoginService;
    }
    @CrossOrigin
    @RequestMapping("adminlogin")
    public Response AdminLogin(
            @RequestParam("adminname") String admin_name,
            @RequestParam("adminpwd") String admin_pwd,
            HttpServletRequest request) {
        Response response = new Response(0, "", false);
        if (adminMapper.AdminLogin(admin_name, admin_pwd) != null) {
            response.setStatus(200);
            response.setMsg("查询成功");
            response.setIsbool(true);
            String loginIp = request.getRemoteAddr();// 获取登录IP地址
            // 创建登录日志对象
            AdminLogin adminLogin = new AdminLogin();
            adminLogin.setAccount(admin_name);
            adminLogin.setLoginIp(loginIp);
            // 插入登录日志
            adminLoginService.AddLogin(adminLogin.getAccount(), adminLogin.getLoginIp(), new Date());
        }
        return response;
    }

    @CrossOrigin
    @RequestMapping("/adminlogs")
    public List<AdminLogin> getLogs(
            @RequestParam("page") int page,
            @RequestParam("size") int size) {
        return adminLoginService.getLogs(page, size);
    }



}
