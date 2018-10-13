package com.anxin.appinfosystem.service.devUser;

import com.anxin.appinfosystem.pojo.DevUser;



public interface DevUserService {
    /**
     * 开发者登录的方法
     * @param devCode
     * @param devUserPassWord
     * @return
     */
    public DevUser login(String devCode, String devUserPassWord);
}
