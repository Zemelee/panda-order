package com.example.order.entity;

import com.example.order.utils.Response;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MoneyRecord {
    public MoneyRecord(int user_id, int deal_type, int deal_amount, Date deal_time) {
        this.user_id = user_id;
        this.deal_type = deal_type;
        this.deal_amount = deal_amount;
        this.deal_time = deal_time;
    }


    private int deal_id;
    private int user_id;
    private int deal_type;
    private int deal_amount;
    private Date deal_time;


    private String formattedDealTime;

    public String getFormattedDealTime() {
        return formattedDealTime;
    }

    public void setFormattedDealTime(String formattedDealTime) {
        this.formattedDealTime = formattedDealTime;
    }


    public int getDeal_id() {
        return deal_id;
    }

    public void setDeal_id(int deal_id) {
        this.deal_id = deal_id;
    }

    public int getUser_id() {
        return user_id;
    }


    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getDeal_type() {
        return deal_type;
    }

    public void setDeal_type(int deal_type) {
        this.deal_type = deal_type;
    }

    public int getDeal_amount() {
        return deal_amount;
    }

    public void setDeal_amount(int deal_amount) {
        this.deal_amount = deal_amount;
    }

    public Date getDeal_time() {
        return deal_time;
    }

    public void setDeal_time(Date deal_time) {
        this.deal_time = deal_time;
    }

    @Override
    public String toString() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String formattedTime = formatter.format(deal_time);

        return "MoneyRecord{" +
                "user_id=" + user_id +
                ", deal_id=" + deal_id +
                ", deal_type=" + deal_type +
                ", deal_amount=" + deal_amount +
                ", deal_time=" + formattedTime +
                '}';
    }
}
