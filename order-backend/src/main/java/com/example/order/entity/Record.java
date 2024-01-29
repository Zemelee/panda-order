package com.example.order.entity;


import java.util.Date;

public class Record {
    private int dish_id;
    private int amount;
    private int user_id;
    private Date order_time;


    public Record(int dish_id, int amount, int user_id, Date order_time) {
        this.dish_id = dish_id;
        this.amount = amount;
        this.user_id = user_id;
        this.order_time = order_time;
    }

    public Record(int amount, int user_id, Date order_time) {
        this.amount = amount;
        this.user_id = user_id;
        this.order_time = order_time;
    }

    public int getDish_id() {
        return dish_id;
    }

    public void setDish_id(int dish_id) {
        this.dish_id = dish_id;
    }


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
