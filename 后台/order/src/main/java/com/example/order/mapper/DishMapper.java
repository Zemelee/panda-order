package com.example.order.mapper;

import com.example.order.entity.Dish;
import com.example.order.utils.Response;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface DishMapper {
    List<Dish> getAllDish();

    Dish dishById(int dish_id);
    boolean likesPlus(int dish_id);
    boolean updateDish(int dish_id, int state);

    boolean salePlus(int dish_id,int num);

    boolean delDish(int dish_id);

    List<Dish> recommend();
    List<Dish> getDishByName(String dishName);

    boolean addDish(String dishName, int price, int category, String description, int state, String picurl,String details);
    boolean salesPlus(int dish_id);

}
