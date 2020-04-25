package com.excercise.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {

    Map<String,User> usermap = new HashMap<>();
    User testUser = new User("testuser","testpassword");



    @GetMapping({"/"})
    public String hello(Model model){
        usermap.put("testuser" , testUser);
        return "/login";
    }

    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("userForm", new User());
        return "/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("userForm") User registrationForm, BindingResult bindingResult,Model model) {

        usermap.put("testuser" , testUser);

        if(registrationForm.getUsername().isEmpty() || registrationForm.getPassword().isEmpty()){
            model.addAttribute("ERROR", "username and password should be supplied");
            return "login";
        }
        else if(usermap.get(registrationForm.getUsername()) != null){
            User currentuser = usermap.get(registrationForm.getUsername());
            if(currentuser.getUsername().equals(registrationForm.getUsername()) && currentuser.getPassword().equals(registrationForm.getPassword())){
                model.addAttribute("username", registrationForm.getUsername());
                return "welcome";
            }
            else if(!currentuser.getPassword().equals(registrationForm.getPassword())){
                model.addAttribute("ERROR", "password donot match");
                return "login";
            }
        }
        else{
            model.addAttribute("ERROR", "username doesnot exist");
        }
        return "login";

    }

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "/signup";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User registrationForm, BindingResult bindingResult,Model model) {

        usermap.put("testuser" , testUser);

        if (!registrationForm.getUsername().isEmpty() && !registrationForm.getPassword().isEmpty() && !registrationForm.getConfirmPassword().isEmpty()) {

            if(registrationForm.getPassword().equals(registrationForm.getConfirmPassword())){
                usermap.put(registrationForm.getUsername(),registrationForm);
                model.addAttribute("username", registrationForm.getUsername());
                model.addAttribute("registrationSuccess", "registrationSuccess");
                return "/welcome";
            }
            else{
                model.addAttribute("ERROR", "password and confirmpassword donot match");
                return "/signup";
            }
        } else {
            model.addAttribute("ERROR", "please try again registration not successfull");
            return "/signup";
        }
    }
}
