package com.example.order.controller;

import com.example.order.entity.MoneyRecord;
import com.example.order.entity.User;
import com.example.order.service.UserService;
import com.example.order.service.MoneyRecordService;
import com.example.order.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private MoneyRecordService moneyRecordService;

    @CrossOrigin
    @RequestMapping("/userinfo")//根据用户id查询用户详情
    public User getUserById(@RequestParam("uid") int user_id) {
        return userService.userById(user_id);
    }
    @CrossOrigin
    @RequestMapping("/userbyname")//根据用户名查询用户详情
    public User getUserByName(@RequestParam("uname") String uname) {
        return userService.userByName(uname);
    }
    @CrossOrigin
    @RequestMapping("/usersinfo") //查询所有用户详情
    public List<User> getUsers() {
        return userService.findAll();
    }

    @CrossOrigin
    @RequestMapping("/adduser") //新增用户
    public Response addUser(@RequestParam("uname") String user_name) {
        Response response1 = new Response(0, "", false);
        //用户若已存在
        if (userService.userByName(user_name) != null) {
            response1.setStatus(198);
            response1.setMsg("用户已存在!");
            return response1;
        }
        if (userService.addUser(user_name)) {
            response1.setStatus(200);
            response1.setMsg(user_name + "注册成功！");
            response1.setIsbool(true);
        } else {
            response1.setStatus(199);
            response1.setMsg("注册失败！");
            response1.setIsbool(false);
        }
        return response1;
    }
    @CrossOrigin
    @RequestMapping("/deluser")
    public boolean deleteUser(@RequestParam("uid") int id) {
        return userService.deleteUser(id);
    }
    @CrossOrigin
    @RequestMapping("/userlogin") //uname = phoneNumber
    public User userLogin(@RequestParam("uname") String name,
                          @RequestParam("pwd") String pwd) {
        return userService.userLogin(name, pwd);
    }
    @CrossOrigin
    @RequestMapping("/updateuser")
    //根据用户id修改用户自我简介和密码
    public boolean updateUser(
            @RequestParam("uid") int user_id,
            @RequestParam("flavor") String flavor,
            @RequestParam("pwd") String pwd) {
        return userService.updateUser(user_id, flavor, pwd);
    }
    @CrossOrigin
    @GetMapping("/consume")
    //扣费+消费记录+加积分(新增订单接口addrecord)
    public Response consume(
            @RequestParam("uid") int user_id,
            @RequestParam("amount") int amount) {
        Response response = new Response(0, "", false);
        if (amount == 0) {  //消费金额0
            response.setMsg("amount数量为0");
            return response;
        }
        if (userService.userById(user_id).getMoney() >= amount) {
            //扣费
            if (userService.consume(user_id, amount)) {
                //消费记录 1表示消费 2表示充值
                MoneyRecord moneyRecord = new MoneyRecord(user_id, 1, amount, new Date());
                //增加消费记录（余额变动记录）
                moneyRecordService.addMoneyRecord(moneyRecord);
                //更新积分记录
                userService.updatePoint(user_id, amount);
                response.setIsbool(true);
                response.setMsg("扣费成功，记录已保存，积分已更新");
                response.setStatus(200);
            }
        } else {
            response.setIsbool(false);
            response.setMsg("余额不足，扣费失败");
            response.setStatus(199);
        }
        return response;
    }

    @CrossOrigin
    @GetMapping("/recharge") //充值+充值记录
    public Response recharge(@RequestParam("uid") int user_id, @RequestParam("amount") int amount) {
        Response response = new Response(0, "", false);
        if (userService.recharge(user_id, amount)) {  //充值业务
            MoneyRecord moneyRecord = new MoneyRecord(user_id, 2, amount, new Date());
            moneyRecordService.addMoneyRecord(moneyRecord); //插入记录
            response.setStatus(200);
            response.setMsg("用户" + user_id + " 充值成功!充值记录已保存");
            response.setIsbool(true);
            return response;
        }
        return response;
    }


}

