package com.simbirsoft.practice.bookreviewsite.controller.prod;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("login_or_sign_up")
public class LoginOrSignUpController {

    @GetMapping
    public String getLoginOrSignUpPage() {
        return "login";
    }

}
