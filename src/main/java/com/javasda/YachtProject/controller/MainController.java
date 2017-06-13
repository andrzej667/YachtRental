package com.javasda.YachtProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 * Created by RENT on 2017-06-13.
 */
public class MainController {


    @Controller
    @RequestMapping("/home")
    public class home {

        @GetMapping()
        public String home() {
            return "home";
        }

    }
}
