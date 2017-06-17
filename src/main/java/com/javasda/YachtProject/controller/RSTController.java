package com.javasda.YachtProject.controller;

import com.javasda.YachtProject.model.User;
import com.javasda.YachtProject.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping()
public class RSTController {

    @Autowired
    MainService mainService;

    @PostMapping("/signup")
    public String createAccount(@ModelAttribute User user) {
        mainService.addUser(user.getLogin(), user.getPassword(), user.getRoles(), user.getFirstName(),
                user.getLastName(), user.getEmail());
        return "redirect:/login";
    }

    @GetMapping("/rozdzielnia")
    public String rodzielnia(Authentication authentication) {
        if (authentication.getAuthorities().equals("USER"))
            return "redirect:/user1";

        else return "redirect:/owner1";
    }

}
