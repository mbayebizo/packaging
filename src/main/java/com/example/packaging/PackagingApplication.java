package com.example.packaging;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@ResponseBody
@Controller
@SpringBootApplication
public class PackagingApplication {

    @GetMapping("/")
    Map<String,String> hello(){
        return Map.of("message","Hello Docker");
    }
    public static void main(String[] args) {
        SpringApplication.run(PackagingApplication.class, args);
    }

}
