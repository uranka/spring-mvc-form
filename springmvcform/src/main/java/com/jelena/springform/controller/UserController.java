package com.jelena.springform.controller;

import com.jelena.springform.model.Gender;
import com.jelena.springform.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;

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
    public String processUser(Model model, @Valid User user, BindingResult result, HttpServletRequest request) throws IOException {

        model.addAttribute("u", user);

        if (result.hasErrors()) {
            model.addAttribute("genders", Gender.values());
            model.addAttribute("countries", countries);
            // prethodno uneti podaci se cuvaju za ponovni poziv forme osim slike koja se gubi
            return "userForm";
        }
        else {
            model.addAttribute("pictureSize", user.getPicture().getBytes().length);

            MultipartFile picture = user.getPicture();
            String rootDirectory = request.getSession().getServletContext().getRealPath("/");
            System.out.println(rootDirectory);

            String fileName = user.getPicture().getOriginalFilename();
            model.addAttribute("fileName", fileName); // ime slike sa ekstenzijom
            System.out.println("fileName=" + fileName);

            if (picture != null && !picture.isEmpty()) {
                picture.transferTo(new File(rootDirectory + "userPictures\\" + fileName));
            }

            return "userResult";
        }
    }

}
