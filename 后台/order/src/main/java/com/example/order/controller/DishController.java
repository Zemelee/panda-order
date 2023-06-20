package com.example.order.controller;


import com.example.order.entity.Dish;
import com.example.order.service.DishService;
import com.example.order.utils.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class DishController {
    @Autowired
    private DishService dishService;

    @RequestMapping("getalldish")
    public List<Dish> getAllDish() {
        return dishService.getAllDish();
    }

    @RequestMapping("likesplus")
    public Response likesPlus(@RequestParam("did") int dish_id) {

        return dishService.likesPlus(dish_id);
    }

    @RequestMapping("dishById")
    public Dish dishById(@RequestParam("did") int dish_id) {
        return dishService.dishById(dish_id);
    }

    @RequestMapping("recommend")
    //筛选出点赞最高的三个菜品
    public List<Dish> recommend() {
        return dishService.recommend();
    }

    @RequestMapping("updateDish")
    public boolean updateDish(@RequestParam("did") int dish_id, @RequestParam("state") int state) {
        return dishService.updateDish(dish_id, state);
    }

    @RequestMapping("dishsearch")
    public List<Dish> getDishByName(@RequestParam("dishname") String dishName) {
        return dishService.getDishByName(dishName);
    }

    @PostMapping("/indent")
    public String processData(@RequestBody Dish[] dishes) {
        // 处理前端传递的数据
        for (Dish dish : dishes) {
            System.out.println(dish);
        }
        return "success";
    }

    @RequestMapping("deldish")
    public boolean delDish(@RequestParam("did") int dish_id) {
        return dishService.delDish(dish_id);
    }


    @RequestMapping("adddish")
    public Response addDish(
            @RequestParam("dishname") String dishName,
            @RequestParam("price") int price,
            @RequestParam("category") int category,
            @RequestParam("description") String description,
            @RequestParam("state") int state,
            @RequestParam(value = "picurl", required = false) String picurl,
            @RequestParam(value = "details", required = false) String details) {
        Response response = new Response(0, "", false);
        if (dishService.addDish(dishName, price, category, description, state, picurl, details)) {
            response.setIsbool(true);
            response.setMsg("添加成功");
            response.setStatus(200);
            return response;
        }
        return response;
    }
}
