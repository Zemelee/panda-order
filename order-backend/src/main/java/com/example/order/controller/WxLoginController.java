package com.example.order.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

@RestController
public class WxLoginController {
    @RequestMapping("wxlogin")
    public String wxlogin(@RequestParam("js_code") String code) {
        RestTemplate restTemplate = new RestTemplate();
        String url = UriComponentsBuilder.fromHttpUrl("https://api.weixin.qq.com/sns/jscode2session")
                .queryParam("appid", "wx878364b3796da48a")
                .queryParam("secret", "6f88f78cdf837228ab38881c6bd7d4b0")
                .queryParam("js_code", code)
                .queryParam("grant_type", "authorization_code")
                .build()
                .toUriString();
        String response = restTemplate.getForObject(url, String.class);
        System.out.println(response);
        return response;
    }


}
