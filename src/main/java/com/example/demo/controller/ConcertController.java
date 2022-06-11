package com.example.demo.controller;



import com.example.demo.model.Concert;
import com.example.demo.services.ConcertService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/concert")
public class ConcertController {

    @Autowired
    ConcertService concertService;

    @PostMapping({"/createConcert"})
    public ModelAndView createConcertPost(@ModelAttribute Concert concert , HttpSession session, Model model){
        if(session.getAttribute("admin") == null){
            return new ModelAndView("redirect:/admin/signin");
        }
        else{
            System.out.println(concert);
            concertService.addConcert(concert);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/createConcert"})
    public ModelAndView createConcert(HttpSession session, Model model){
        if(session.getAttribute("admin") == null){
            return new ModelAndView("redirect:/admin/signin");
        }
        else{
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("createCinema");
        }
    }

    @GetMapping({"/cancel"})
    public ModelAndView cancelConcert(@RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            concertService.deleteConcert(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @PostMapping({"/update"})
    public ModelAndView updateConcertPost(@ModelAttribute Concert concert, @RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            concertService.updateConcert(concert, concert.getId());
            model.addAttribute("admin", session.getAttribute("admin"));
            return new ModelAndView("redirect:/admin");
        }
    }

    @GetMapping({"/update"})
    public ModelAndView updateConcert(@RequestParam int id, HttpSession session, Model model) {
        if(session.getAttribute("admin") == null) {
            return new ModelAndView("redirect:/admin/signin");
        } else {
            Concert item =  concertService.getConcertById(id);
            model.addAttribute("admin", session.getAttribute("admin"));
            model.addAttribute("item", item);
            return new ModelAndView("updateConcert");
        }
    }







}