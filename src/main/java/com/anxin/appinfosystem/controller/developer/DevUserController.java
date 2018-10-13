package com.anxin.appinfosystem.controller.developer;

import com.anxin.appinfosystem.pojo.DevUser;
import com.anxin.appinfosystem.service.devUser.DevUserService;
import com.anxin.appinfosystem.tools.Constants;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/devuser")
public class DevUserController {

    //日志
    private Logger logger=Logger.getLogger(DevIndexController.class);

    @Resource
    //开发者用户的service
    private DevUserService devUserService;

    public DevUserService getDevUserService() {
        return devUserService;
    }

    public void setDevUserService(DevUserService DevUserService) {
        this.devUserService = devUserService;
    }


    /**
     * 用户登录
     * @param devCode
     * @param devUserPassWord
     * @param request
     * @return
     */
    @RequestMapping("/dologin")
    public String dologin(String devCode, String devUserPassWord, HttpServletRequest request){
        DevUser devUser=devUserService.login(devCode,devUserPassWord);
        if(null!=devUser){
            if(!devUser.getDevPassword().equals(devUserPassWord)){
                throw  new RuntimeException("密码不正确");
            }
            request.getSession().setAttribute(Constants.DEV_USER_SESSION,devUser);
            return "redirect:/dev/main.html";
        }else{
            throw  new RuntimeException("用户名不正确");
        }
    }
    /**
     * 用户注销
     * @param session
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        //清除session
        session.removeAttribute(Constants.DEV_USER_SESSION);
        return "redirect:/dev/login.html";
    }

}
