package com.anxin.appinfosystem.controller.backend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class BackendIndexController {

    @RequestMapping("/login.html")
    public String login(){
        return "backend/login";
    }


}
