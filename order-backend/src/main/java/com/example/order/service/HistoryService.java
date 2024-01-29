package com.example.order.service;

import com.example.order.entity.History;
import com.example.order.mapper.HistoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HistoryService {
    @Autowired
    private HistoryMapper historyMapper;

    public List<History> HistoryById(int uid) {
        return historyMapper.HistoryById(uid);
    }


}
