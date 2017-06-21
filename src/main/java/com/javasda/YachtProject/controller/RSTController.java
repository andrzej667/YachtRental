package com.javasda.YachtProject.controller;

import com.javasda.YachtProject.model.User;
import com.javasda.YachtProject.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping()
public class RSTController {

    @Autowired
    MainService mainService;

    @PostMapping("/create")
    public String createAccount(@ModelAttribute User user) {
        mainService.addUser(user.getLogin(), user.getPassword(), user.getRoles());
        return "redirect:/login";
    }

}
