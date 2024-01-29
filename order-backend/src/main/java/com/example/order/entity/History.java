package com.example.order.entity;


import java.util.Date;

public class History extends Dish {
    public History(int dish_id, String dish_name) {
        super(dish_id, dish_name);
    }

    private int amount;
    private int user_id;
    private Date order_time;


    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public Date getOrder_time() {
        return order_time;
    }

    public void setOrder_time(Date order_time) {
        this.order_time = order_time;
    }


}
