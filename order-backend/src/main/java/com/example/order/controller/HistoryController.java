package com.example.order.controller;


import com.example.order.entity.History;
import com.example.order.mapper.HistoryMapper;
import com.example.order.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HistoryController {
    @Autowired
    private HistoryService historyService;
    private HistoryMapper historyMapper;
    @CrossOrigin
    @RequestMapping("/histroy")
    public List<History> RecordById(@RequestParam("uid") int uid) {
        return historyService.HistoryById(uid);
    }


}
