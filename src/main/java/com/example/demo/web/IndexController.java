package com.example.demo.web;

import com.example.demo.domain.issue.InquiryForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;


@Controller
public class IndexController {
    // GET /
    @GetMapping
    public String index(@Validated @ModelAttribute InquiryForm inquiryForm, Model model) {
        model.addAttribute("inquiryForm", inquiryForm);
        return "index";
    }

    @GetMapping("/login")
    public String showLoginForm(){
        return "login";
    }

    @GetMapping("/logout")
    public String showLogoutForm(){
        return "login";
    }

    @GetMapping("/error")
    public String showError(Model model){
        return "error";
    }

}
