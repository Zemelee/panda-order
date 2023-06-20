package com.example.order.service;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.util.Base64;


public class CryptService {

    private static final String IV_PARAMETER_SPEC = "0123456789abcdef";
    private static final String CHARSET_NAME = "UTF-8";
    private static final String ALGORITHM = "AES/CBC/PKCS5Padding";

    /**
     * AES 加密
     *
     * @param content 需要加密的内容
     * @param key     密钥（16、24 或 32 位）
     * @return 加密后的密文
     */
    public static String encrypt(String content, String key) throws Exception {
        // 按 UTF-8 编码方式将密钥转换成字节数组，并使用 AES 算法生成秘钥对象 SecretKeySpec
        SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "AES");
        // 获取 AES 算法 CBC 加密模式，并使用 Padding 方式为 PKCS5Padding 的 Cipher 对象
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        // 初始化向量 IvParameterSpec，可以使用默认的 16 个 0
        IvParameterSpec iv = new IvParameterSpec(IV_PARAMETER_SPEC.getBytes(StandardCharsets.UTF_8));
        // 初始化 Cipher 对象为加密模式，并使用密钥 secretKey 和向量 iv 进行初始化
        cipher.init(Cipher.ENCRYPT_MODE, secretKey, iv);
        // 使用 UTF-8 编码将需要加密的内容 content 转换成字节数组
        byte[] encryptedBytes = cipher.doFinal(content.getBytes(StandardCharsets.UTF_8));
        // 将加密后的密文字节数组转换成 base64 编码的字符串并返回
        return Base64.getEncoder().encodeToString(encryptedBytes);
    }

    /**
     * AES 解密
     *
     * @param content 需要解密的密文
     * @param key     密钥（16、24 或 32 位）
     * @return 解密后的明文
     */
    public static String decrypt(String content, String key) throws Exception {
        // 按 UTF-8 编码方式将密钥转换成字节数组，并使用 AES 算法生成秘钥对象 SecretKeySpec
        SecretKeySpec secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "AES");
        // 获取 AES 算法 CBC 解密模式，并使用 Padding 方式为 PKCS5Padding 的 Cipher 对象
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        // 初始化向量 IvParameterSpec，可以使用默认的 16 个 0
        IvParameterSpec iv = new IvParameterSpec(IV_PARAMETER_SPEC.getBytes(StandardCharsets.UTF_8));
        // 初始化 Cipher 对象为解密模式，并使用密钥 secretKey 和向量 iv 进行初始化
        cipher.init(Cipher.DECRYPT_MODE, secretKey, iv);
        // 将 base64 编码的密文 content 转换成字节数组
        byte[] encryptedBytes = Base64.getDecoder().decode(content.getBytes(StandardCharsets.UTF_8));
        // 使用 Cipher 对象进行解密
        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
        // 将字节数组转换成 UTF-8 编码的字符串并返回
        return new String(decryptedBytes, StandardCharsets.UTF_8);
    }



}
