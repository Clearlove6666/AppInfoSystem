package com.anxin.appinfosystem.dao.appversion;


import com.anxin.appinfosystem.pojo.AppVersion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppVersionMapper {
    /**
     * 根据appid查询app所有版本的信息
     * @param appId
     * @return
     */
    public List<AppVersion> appversionInfo(@Param("appId") Integer appId);

    public int addVersion(AppVersion appVersion);

    public Integer getVersion(Integer appid);

    public AppVersion getAppVersionById(@Param("versionid") Integer versionid);

    public int deleteApkFile(@Param("versionid") Integer versionid);
}
