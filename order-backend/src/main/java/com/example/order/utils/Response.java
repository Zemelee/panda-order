package com.example.order.utils;

public class Response {
    private int status;
    private String msg;

    public Response(int status, String msg, boolean isbool) {
        this.status = status;
        this.msg = msg;
        this.isbool = isbool;
    }

    private boolean isbool;

    public boolean isIsbool() {
        return isbool;
    }

    public void setIsbool(boolean isbool) {
        this.isbool = isbool;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
