package com.anxin.appinfosystem.dao.devUser;

import com.anxin.appinfosystem.pojo.DevUser;
import org.apache.ibatis.annotations.Param;

public interface DevUserMapper {
    /**
     * 开发者登录的方法
     * @param devCode
     * @return
     */
    public DevUser login(@Param("devCode")String devCode);
}
