package com.jelena.springform.controller;

import com.jelena.springform.model.Gender;
import com.jelena.springform.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Win10 on 10/9/2017.
 */
@Controller
public class UserController {

    private static final String[] countries = { "Serbia", "Germany",
            "Russia", "Greece", "USA"};
    @RequestMapping(value = "/form")
    public String user(Model model) {
        // send array containing all of the values of the enum Gender
        model.addAttribute("genders", Gender.values());
        // send array of countries
        model.addAttribute("countries", countries);
        model.addAttribute("user", new User()); // send empty user to userForm
        return "userForm";
    }

    @RequestMapping(value = "/result")
    public String processUser(Model model, User user) {
        model.addAttribute("u", user);
        return "userResult";
    }

}
