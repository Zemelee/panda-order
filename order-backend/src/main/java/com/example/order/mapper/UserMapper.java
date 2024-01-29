package com.example.order.mapper;

import com.example.order.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

//mapper层建立接口、定义数据库的操作动作
//interface抽象类，定义一组方法但不包含方法实现
@Mapper
public interface UserMapper {
    List<User> findAll();

    boolean addUser(String user_name);

    boolean deleteUser(int id);

    boolean updateUser(int user_id, String flavor,String pwd);

    boolean updatePoint(int user_id, int point);

    User userById(int id);

    User userByName(String name);

    User userLogin(String name,String pwd);

    boolean consume(int user_id, int amount);

    boolean recharge(int user_id, int amount);

}
