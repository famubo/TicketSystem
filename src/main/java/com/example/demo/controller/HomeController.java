package com.example.demo.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @GetMapping({""})
    public ModelAndView HomePage(Model model, HttpSession session) {
        if(session.getAttribute("user") != null) {
            return new ModelAndView("redirect:/user/cinema");
        } else {
            return new ModelAndView("HomePage");
        }
    }
}
