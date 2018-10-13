package com.anxin.appinfosystem.controller.developer;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/dev")
public class DevIndexController {
    /**
     * 直接转发到登录页面
     * @return
     */
    @RequestMapping("/login.html")
    public String login(){
        return "developer/login";
    }
    /**
     * 转发到主页面
     * @return
     */
    @RequestMapping("/main.html")
    public String main(){
        return "developer/main";
    }



}
