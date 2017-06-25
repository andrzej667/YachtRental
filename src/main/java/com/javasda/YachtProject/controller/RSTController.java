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

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping()
public class RSTController {

    @Autowired
    MainService mainService;

    @PostMapping("/signup")
    public String createAccount(@ModelAttribute User user) {
        System.out.println(user);
        mainService.addUser(user.getLogin(), user.getPassword(), user.getRoles(), user.getFirstName(),
                user.getLastName(), user.getEmail());
        System.out.println(mainService.listOfUsers());
        return "redirect:/login";
    }

    @GetMapping("/rozdzielnia")
    public String redirectDependOnRole(HttpServletRequest request) {
        if (request.isUserInRole("ROLE_USER"))
            return "redirect:/user";

        else return "redirect:/owner";
    }
}
