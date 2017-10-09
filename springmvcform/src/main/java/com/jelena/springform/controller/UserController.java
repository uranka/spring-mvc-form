package com.jelena.springform.controller;

import com.jelena.springform.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Win10 on 10/9/2017.
 */
@Controller
public class UserController {
    @RequestMapping(value = "/form")
    public String user(Model model) {
    System.out.println("inside user method");
        return "userForm";
    }

    @RequestMapping(value = "/result")
    public String processUser(Model model, User user) {
        model.addAttribute("u", user);
        return "userResult";
    }

}
