package com.example.order.service;

import com.example.order.entity.Dish;
import com.example.order.mapper.DishMapper;
import com.example.order.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class DishService {
    @Autowired
    private DishMapper dishMapper;

    public List<Dish> getAllDish() {
        return dishMapper.getAllDish();
    }

    public List<Dish> recommend(){
        return dishMapper.recommend();
    }

    public Response likesPlus(int dish_id) {
        Response response = new Response(199, "点赞失败", false);
        if (dishMapper.likesPlus(dish_id)) {
            response.setStatus(200);
            response.setMsg("点赞成功");
            response.setIsbool(true);
        }
        return response;
    }

    public Dish dishById(int dish_id) {
        return dishMapper.dishById(dish_id);
    }

    public boolean updateDish(int dish_id, int state) {
        return dishMapper.updateDish(dish_id, state);
    }

    public boolean salePlus(int dish_id, int num) {
        return dishMapper.salePlus(dish_id, num);
    }

    public boolean delDish(int dish_id) {
        return dishMapper.delDish(dish_id);
    }

    public List<Dish> getDishByName(String dishName) {
        return dishMapper.getDishByName(dishName);
    }

    public boolean addDish(String dishName, int price, int category, String description, int state, String picurl, String details) {
        return dishMapper.addDish(dishName, price, category, description, state, picurl, details);
    }

}
