package com.example.order.entity;

import java.util.Date;

public class RecordDetail extends Record {
    public RecordDetail(int amount, int user_id, Date order_time) {
        super(amount, user_id, order_time);
    }

    private int price;

    public String getDish_name() {
        return dish_name;
    }

    public void setDish_name(String dish_name) {
        this.dish_name = dish_name;
    }

    private String dish_name;

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
