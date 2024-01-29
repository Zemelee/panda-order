package com.example.order.entity;

public class User {
    private int user_id;
    private String user_name;
    private String user_pwd;
    private int money;
    private String flavor;
    private int point;
    private String avatarUrl;

    public User(Integer user_id, String user_name, String user_pwd, String avatarUrl, Integer money, String flavor, Integer point) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_pwd = user_pwd;
        this.avatarUrl = avatarUrl;
        this.money = money;
        this.flavor = flavor;
        this.point = point;
    }

    public User(String user_name, String avatarUrl) {
        this.user_name = user_name;
        this.avatarUrl = avatarUrl;
    }

    public User(int user_id, String flavor) {
        this.user_id = user_id;
        this.flavor = flavor;
    }

    public User(int user_id, int point) {
        this.user_id = user_id;
        this.point = point;
    }

    public String getAvatarUrl() {
        return avatarUrl;
    }

    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }


    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public void setMoney(int money) {
        this.money = money;
    }


    public int getUser_id() {
        return user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public int getMoney() {
        return money;
    }

    public String getFlavor() {
        return flavor;
    }

    public void setFlavor(String flavor) {
        this.flavor = flavor;
    }


}
