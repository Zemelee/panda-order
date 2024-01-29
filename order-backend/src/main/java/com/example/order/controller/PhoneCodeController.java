package com.example.order.controller;
//LTAI5tPgd3XVNnMfvqp6oJnq  id
//NQpY99L5MemPNKoq0H1VYmBUdr7bCD  secret

import com.aliyun.tea.*;
import com.example.order.utils.Response;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

@RestController
public class PhoneCodeController {

    public static com.aliyun.dysmsapi20170525.Client createClient(String accessKeyId, String accessKeySecret) throws Exception {
        com.aliyun.teaopenapi.models.Config config = new com.aliyun.teaopenapi.models.Config()
                // 必填，您的 AccessKey ID
                .setAccessKeyId(accessKeyId)
                // 必填，您的 AccessKey Secret
                .setAccessKeySecret(accessKeySecret);
        // 访问的域名
        config.endpoint = "dysmsapi.aliyuncs.com";
        return new com.aliyun.dysmsapi20170525.Client(config);
    }
    //生成随机验证码
    public static String getRandomCode(int num) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < num; i++) {
            // 生成一个随机数字，并将其转换为字符
            char c = (char) (random.nextInt(10) + '0');
            sb.append(c);
        }
        return sb.toString();
    }
    @CrossOrigin
    @RequestMapping("/getcode")
    public Response getCode(@RequestParam("phone") String phone) throws Exception {
        String phoneCodeString = getRandomCode(6);
        int phoneCode = Integer.parseInt(phoneCodeString);
        Response response1 = new Response(0, "", false);
        com.aliyun.dysmsapi20170525.Client client = PhoneCodeController.createClient("XXXXXX", "xxxxxxxx");
        com.aliyun.dysmsapi20170525.models.SendSmsRequest sendSmsRequest = new com.aliyun.dysmsapi20170525.models.SendSmsRequest()
                .setSignName("你的签名")
                .setTemplateCode("你的模板编号")
                .setPhoneNumbers(phone)
                .setTemplateParam("{\"code\":\"" + phoneCode + "\"}");
        com.aliyun.teautil.models.RuntimeOptions runtime = new com.aliyun.teautil.models.RuntimeOptions();
        try {
            com.aliyun.dysmsapi20170525.models.SendSmsResponse response = client.sendSmsWithOptions(sendSmsRequest, runtime);
            if (response.getStatusCode() == 200) {
                System.out.println("短信api调用成功" + response);
            }
            response1.setIsbool(true);
            response1.setMsg("Status值为手机验证码");
            response1.setStatus(phoneCode);
        } catch (TeaException error) {
            com.aliyun.teautil.Common.assertAsString(error.message);
            System.out.println("error1:" + error.message);
        } catch (Exception _error) {
            TeaException error = new TeaException(_error.getMessage(), _error);
            com.aliyun.teautil.Common.assertAsString(error.message);
            System.out.println("error2:" + error.message);
        }
        return response1;
    }
}