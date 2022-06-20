package com.example.demo.web.user;


import com.example.demo.domain.auth.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;

@Controller
@RequestMapping("/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping
    public String showList(Model model) {
        model.addAttribute("userList", userService.findAll());
        return "users/list";
    }

    // GET /users/creationForm
    @GetMapping("/creationForm")
    public String showCreationForm(@ModelAttribute UserForm userForm) {
        return "users/creationForm";
    }

    // Post /users
    @PostMapping
    public String create(@Validated UserForm form, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return showCreationForm(form);
        }
        userService.create(form.getUsername(), form.getPassword(), form.getAuthority());
        return "redirect:/users";
    }
}
