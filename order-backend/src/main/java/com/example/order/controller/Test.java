package com.example.order.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class Test {
    @RequestMapping("/test")
    public String RecordById(@RequestParam("str") String str) {
        return "test Success" + str;
    }

}
