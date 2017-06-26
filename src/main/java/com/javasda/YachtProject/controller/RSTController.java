package com.javasda.YachtProject.controller;

import com.javasda.YachtProject.model.User;
import com.javasda.YachtProject.model.Yacht;
import com.javasda.YachtProject.service.MainService;
import com.javasda.YachtProject.storage.StorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping()
public class RSTController {

    MainService mainService;
    StorageService storageService;

    @Autowired
    public RSTController(MainService mainService, StorageService storageService) {
        this.mainService = mainService;
        this.storageService = storageService;
    }

    @PostMapping("/signup")
    public String createAccount(@ModelAttribute User user) {
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
    @PostMapping("/addyacht")
    public String handleFileUpload(@ModelAttribute Yacht yacht, @RequestParam("file") MultipartFile file,
                                   RedirectAttributes redirectAttributes, HttpServletRequest request ) {
        String fileName = file.getOriginalFilename();
        mainService.addYacht(yacht.getName(),request.getRemoteUser(), yacht.getPrice(), yacht.getNumberOfPersons(),
                yacht.getPropulsion(), yacht.getHullType(), yacht.getDescryption(), fileName );

        System.out.println(mainService.findYachByName(yacht.getName()));

        storageService.store(file);
        redirectAttributes.addFlashAttribute("message",
                "You successfully uploaded " + file.getOriginalFilename() + "!");

        return "search";
    }
}
