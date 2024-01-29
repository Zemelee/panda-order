package com.example.order.service;

import com.example.order.entity.User;
import com.example.order.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public List<User> findAll() {
        return userMapper.findAll();
    }

    public User userById(int id) {
        return userMapper.userById(id);
    }

    public User userByName(String name) {
        return userMapper.userByName(name);
    }

    //用户登录
    public User userLogin(String name, String pwd) {
        return userMapper.userLogin(name, pwd);
    }

    //新增用户
    public boolean addUser(String user_name) {
        return userMapper.addUser(user_name);
    }

    public boolean deleteUser(int id) {
        return userMapper.deleteUser(id);
    }

    public boolean updateUser(int user_id, String flavor, String pwd) {
        flavor = flavor.replaceAll("<", "")
                .replaceAll("<", "")
                .replaceAll(">", "")
                .replaceAll("/", "")
                .replaceAll("\\*", "")
                .replaceAll("\\(", "")
                .replaceAll("\\)", "")
                .replaceAll("\\[", "")
                .replaceAll("\\]", "")
                .replaceAll("\\{", "")
                .replaceAll("\\}", "")
                .replaceAll("\\\\", "")
                .replaceAll("'", "")
                .replaceAll("\"", "")
                .replaceAll(";", "")
                .replaceAll("\\|", "");
        System.out.println(flavor);
        return userMapper.updateUser(user_id, flavor, pwd);
    }

    public boolean updatePoint(int user_id, int point) {
        return userMapper.updatePoint(user_id, point);
    }

    public boolean consume(int user_id, int amount) {
        return userMapper.consume(user_id, amount);
    }

    public boolean recharge(int user_id, int amount) {
        return userMapper.recharge(user_id, amount);
    }
}
