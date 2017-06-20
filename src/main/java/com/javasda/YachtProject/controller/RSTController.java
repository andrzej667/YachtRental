package com.javasda.YachtProject.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/create")
public class RSTController {

    @PostMapping
    public String createAccount() {
        //mainService.addUser(user.getLogin(), user.getPassword(), user.getRoles());
        //@ModelAttribute User user
        System.out.println("jestem TU");
        return "redirect:/home";
    }

}
