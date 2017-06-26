package com.javasda.YachtProject.controller;

import com.javasda.YachtProject.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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

    @GetMapping("/addyacht")
    public String addyacht() { return "addyacht"; }

    @GetMapping("/signup")
    public String signup() { return "signup"; }


    @GetMapping("/placeOrder")
    public String placeOrder() { return "placeOrder"; }

    @GetMapping("/myyachts")
    public String myyachts() { return "myyachts"; }

    @PostMapping("/placeOrder")
    public String orderingTrip(@RequestParam("yachtName") String yachtName, @RequestParam("date") String date,
                                @RequestParam("noOfDays") String days, HttpServletRequest request) {

        String userLogin = request.getRemoteUser();
        int noOfDays = Integer.parseInt(days);
        if (mainService.placeOrder(yachtName, userLogin, date, noOfDays) == true) {
            return "redirect:/search";
        }
        else{
            return "placeOrder";
        }

    }
    @GetMapping("/about")
    public String about() {
        return "about";
    }
}
