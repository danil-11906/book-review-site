package com.simbirsoft.practice.bookreviewsite.controller.prod;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("profileBook")
public class ProfileBookController {
    @GetMapping
    public String getProfileBookPage() {
        return "singleFilm";
    }
}
