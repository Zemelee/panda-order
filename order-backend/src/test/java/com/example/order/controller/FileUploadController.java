//package com.example.order.controller;
//
//
//import com.example.order.utils.Response;
//import com.example.order.service.DishService;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.multipart.MultipartFile;
//
//import java.io.File;
//import java.io.IOException;
//
//
//@RestController
//public class FileUploadController {
//    DishService dishService;
//    @PostMapping("/upload")
//    public Response addDish(
//            @RequestParam("dishname") String dishName,
//            @RequestParam("price") int price,
//            @RequestParam("category") int category,
//            @RequestParam("description") String description,
//            @RequestParam("state") int state,
//            @RequestParam(value = "picurl", required = false) MultipartFile picurl,
//            @RequestParam(value = "details", required = false) String details) {
//
//        Response response = new Response(0, "", false);
//        if (picurl != null && picurl.getSize() > 0) { // 检查图片是否存在且大小大于0
//            byte[] imageBytes = picurl.getBytes(); // 将图片转换为字节数组
//            String imageUrl = "/images/" + dishName + ".jpg"; // 生成图片的URL
//            try {
//                fileStorageService.storeImage(imageUrl, imageBytes); // 将图片存储到文件系统
//            } catch (IOException e) {
//                e.printStackTrace();
//                response.setMsg("添加失败");
//                response.setStatus(500);
//                return response;
//            }
//        } else {
//            response.setMsg("添加失败");
//            response.setStatus(500);
//            return response;
//        }
//        if (dishService.addDish(dishName, price, category, description, state, picurl == null ? null : picurl.getOriginalFilename(), details)) {
//            response.setIsbool(true);
//            response.setMsg("添加成功");
//            response.setStatus(200);
//            return response;
//        }
//        return response;
//    }
//}
//
