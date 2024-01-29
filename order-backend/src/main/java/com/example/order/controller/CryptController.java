package com.example.order.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.util.Base64;

@RestController
public class CryptController {
    @RequestMapping("decrypt")
    public static String decryptData(
            @RequestParam("encrypt") String encryptedData,
            @RequestParam("sessionkey") String sessionKey,
            @RequestParam("iv") String iv) {
        String result = "";
        System.out.println("encryptedData:");
        System.out.println(encryptedData);
        try {
            // 使用 base64 解码数据
            byte[] encryptedDataByte = Base64.getDecoder().decode(encryptedData);
            byte[] sessionKeyByte = Base64.getDecoder().decode(sessionKey);
            byte[] ivByte = Base64.getDecoder().decode(iv);
            // 使用解码后的 sessionKey 和 iv 初始化 AES 加密器
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            SecretKeySpec secretKeySpec = new SecretKeySpec(sessionKeyByte, "AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKeySpec, new IvParameterSpec(ivByte));
            // 解密加密数据
            byte[] decryptedDataByte = cipher.doFinal(encryptedDataByte);
            result = new String(decryptedDataByte);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(result);
        return result;
    }
}
