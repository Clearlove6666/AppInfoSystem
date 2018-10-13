package com.anxin.appinfosystem.service.appversion;

import com.anxin.appinfosystem.pojo.AppVersion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppversionService {
    /**
     * 根据appid查询app的版本信息
     * @param appId
     * @return
     */
    public List<AppVersion> appversionInfo(@Param("appId") Integer appId);
    public int addVersion(AppVersion appVersion);

    public Integer getVersion(Integer appid);


    public AppVersion getAppVersionById(Integer id);

    public int deleteApkFile(Integer id);
}
