package com.anxin.appinfosystem.service.devUser;

import com.anxin.appinfosystem.dao.devUser.DevUserMapper;
import com.anxin.appinfosystem.pojo.DevUser;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DevUserServiceImpl implements DevUserService{

    @Resource
    private DevUserMapper mapper;

    public DevUserMapper getDevUserMapper() {
        return mapper;
    }

    public void setDevUserMapper(DevUserMapper DevUserMapper) {
        this.mapper = mapper;
    }


    public DevUser login(String devCode, String devUserPassWord) {
        return mapper.login(devCode);
    }
}
