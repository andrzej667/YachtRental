package com.javasda.YachtProject.controller;

import com.javasda.YachtProject.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class MainController {

    MainService mainService;

    @Autowired
    public MainController(MainService mainService) {
        this.mainService = mainService;
    }

    @GetMapping("/home")
    public String home() {
        return "home";
    }
    @GetMapping("/search")
    public String search(Map<String, Object> model) {
            model.put("listOfYachts", mainService.listOfYachts());
        return "search";
    }
    @GetMapping("/user")
    public String user() {
        return "user";
    }
    @GetMapping("/owner")
    public String owner() {
        return "owner";
    }




}
