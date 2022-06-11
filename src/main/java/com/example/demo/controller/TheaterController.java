package com.example.demo.controller;

import com.example.demo.model.Theater;
import com.example.demo.services.TheaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/theater")
public class TheaterController {

    @Autowired
    TheaterService theaterService;

    @PostMapping({"/createTheater"})
    public ModelAndView createTheaterPost(@ModelAttribute Theater theater, HttpSession session, Model model) {
        if (session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            System.out.println(theater);
            theaterService.addTheater(theater);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/createTheater"})
    public ModelAndView createTheater(HttpSession session, Model model) {
        if (session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("createTheater");
        }
    }

    @GetMapping({"/cancel"})
    public ModelAndView cancelTheater(@RequestParam int id, HttpSession session, Model model) {
        if (session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            theaterService.deleteTheater(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @PostMapping({"/update"})
    public ModelAndView updateTheaterPost(@ModelAttribute Theater theater, @RequestParam int id, HttpSession session, Model model) {
        if (session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            theaterService.updateTheater(theater, theater.getId());
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/update"})
    public ModelAndView updateTheater(@RequestParam int id, HttpSession session, Model model) {
        if (session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            Theater item = theaterService.getTheaterById(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            model.addAttribute("item", item);
            return new ModelAndView("updateTheater");
        }
    }
}