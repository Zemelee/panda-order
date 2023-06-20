//package com.example.order.service;
//
//import org.springframework.context.annotation.Bean;
//
//import org.springframework.context.annotation.Configuration;
//
//import org.springframework.core.io.Resource;
//
//import org.springframework.core.io.UrlResource;
//
//import org.springframework.http.MediaType;
//
//import org.springframework.web.multipart.commons.CommonsMultipartResolver;
//
//import org.springframework.web.multipart.MultipartResolver;
//
//import java.io.IOException;
//
//import java.nio.file.Files;
//
//import java.nio.file.Path;
//
//import java.nio.file.Paths;
//
//import java.util.Arrays;
//
//import java.util.List;
//
//import java.util.stream.Collectors;
//
//import java.util.stream.StreamSupport;
//
//@Configuration
//
//public class FileStorageConfig {
//    private final Path storageLocation;
//    private final Resource storageResource;
//    public FileStorageConfig() throws IOException {
//        this("src/main/resources/static/images"); // 你可以根据需要更改存储位置和资源名称
//
//    }
//
//
//
//    public FileStorageConfig(String location) throws IOException {
//
//        storageLocation = Paths.get(location); // 例如："/src/main/resources/static/images"
//
//        storageResource = storageLocation.toRealPath().normalize(); // 例如："/src/main/resources/static/images"(Windows系统)或"/src/main/resources/static/images"(Linux系统)
//
//    }
//
//
//
//    @Bean(name = "fileStorageService") // 如果你使用的是其他名称，请相应地更改此行代码中的bean名称和注入语句。例如：@Autowired private FileStorageService fileStorageService; 然后使用fileStorageService代替原来的dishMapper。
//
//    public FileStorageService getFileStorageService() throws Exception { // 根据你的需求实现FileStorageService接口。例如：return new LocalFileStorageService(); 或者返回一个基于云存储的服务。这里只是一个示例。
//
//        List<String> allowedExtensions = Arrays.asList("jpg", "jpeg", "png"); // 只允许上传这些类型的图片。你可以根据需要更改这个列表。