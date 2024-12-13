package com.example.szymczys;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyController {
    @GetMapping("/")
    public String Welcome(){
        return "Welcome on Szmczyz yn site automatically deployed in container";
    }
    @GetMapping("/hello")
    public String sayHallo(){
        return "Hello";
    }
}
