package com.example.demo.controller;

import com.example.demo.model.Cinema;
import com.example.demo.services.CinemaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/cinema")
public class CinemaController {

    @Autowired
    CinemaService cinemaService;

    @PostMapping({"/createCinema"})
    public ModelAndView createCinemaPost(@ModelAttribute Cinema cinema , HttpSession session, Model model){
        if(session.getAttribute("admin") == null){
            return new ModelAndView("redirect:/admin/signin");
        }
        else{
            System.out.println(cinema);
            cinemaService.addCinema(cinema);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/createCinema"})
    public ModelAndView createCinema(HttpSession session, Model model){
        if(session.getAttribute("admin") == null){
            return new ModelAndView("redirect:/admin/signin");
        }
        else{
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("createCinema");
        }
    }

    @GetMapping({"/cancel"})
    public ModelAndView cancelCinema(@RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            cinemaService.deleteCinema(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @PostMapping({"/update"})
    public ModelAndView updateCinemaPost(@ModelAttribute Cinema cinema, @RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            cinemaService.updateCinema(cinema, cinema.getId());
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/update"})
    public ModelAndView updateCinema(@RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            Cinema item = cinemaService.getCinemaById(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            model.addAttribute("item", item);
            return new ModelAndView("updateCinema");
        }
    }

}
