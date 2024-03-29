package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    CinemaService cinemaService;
    @Autowired
    TheaterService theaterService;

    @Autowired
    ConcertService concertService;
    @Autowired
    TicketService ticketService;

    @GetMapping({"/logout"})
    public ModelAndView logout(HttpSession session, HttpServletResponse response) {
        session.removeAttribute("user");
        Cookie cookie = new Cookie("bilet", null);
        Cookie cookie2 = new Cookie("kullanici", null);
        cookie.setMaxAge(0); // delete cookie
        cookie2.setMaxAge(0);
        response.addCookie(cookie);
        response.addCookie(cookie2);
        return new ModelAndView("redirect:/");
    }

    @GetMapping({"/cinemas"})
    public ModelAndView me(@ModelAttribute User user, Model model, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return new ModelAndView("redirect:/user/signin");
        } else {
            model.addAttribute("user", session.getAttribute("user"));
            model.addAttribute("cinemas", cinemaService.getAllCinemas());
//            model.addAttribute("theaters", theaterService.getAllTheaters());
//            model.addAttribute("theaters", concertService.getAllConcerts());
            return new ModelAndView("reservation");
        }
    }

    @GetMapping({"/mytickets"})
    public ModelAndView mytickets(@RequestParam int userid, @ModelAttribute User user, Model model, HttpSession session) {
        if (session.getAttribute("user") == null) {
            return new ModelAndView("redirect:/user/signin");
        } else {
            model.addAttribute("tickets", ticketService.getByUserIdTickets(userid));
            model.addAttribute("user", session.getAttribute("user"));
            return new ModelAndView("mytickets");
        }
    }

    @PostMapping({"/signup"})
    public ModelAndView signupPost(@ModelAttribute User user, Model model, HttpSession session, HttpServletResponse response) {
        userService.addUser(user);
        session.setAttribute("user", user);

        Cookie cookie = new Cookie("kullanici", user.getUsername());
        cookie.setMaxAge(1 * 24 * 60 * 60);
        response.addCookie(cookie);

        return new ModelAndView("redirect:/user/cinemas");
    }

    @GetMapping({"/signup"})
    public ModelAndView signup(@ModelAttribute User user, Model model, HttpSession session) {
        return new ModelAndView("signup");
    }

    @GetMapping({"/signin"})
    public ModelAndView signin(@ModelAttribute User user, Model model, HttpSession session) {
        if (session.getAttribute("user") != null) {
            model.addAttribute("user", session.getAttribute("user"));
            return new ModelAndView("redirect:/user/cinemas");
        } else {
            return new ModelAndView("signin");
        }
    }

    @PostMapping({"/signin"})
    public ModelAndView signinPost(@ModelAttribute User user, Model model, HttpSession session, HttpServletResponse response) {
        User currentUser = userService.getUserByUsername(user.getUsername());

        if (currentUser == null) {
            return new ModelAndView("redirect:/user/signin?status=usernotfound");
        }

        if (!(currentUser.getPassword().equals(user.getPassword()))) {
            return new ModelAndView("redirect:/user/signin?status=wrongpass");
        }

        session.setAttribute("user", currentUser);
        model.addAttribute("user", currentUser);
        Cookie cookie = new Cookie("kullanici", user.getUsername());
        cookie.setMaxAge(1 * 24 * 60 * 60);
        response.addCookie(cookie);

        return new ModelAndView("redirect:/user/cinemas");
    }
}