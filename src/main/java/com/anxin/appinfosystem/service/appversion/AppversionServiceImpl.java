package com.anxin.appinfosystem.service.appversion;

import com.anxin.appinfosystem.dao.appversion.AppVersionMapper;
import com.anxin.appinfosystem.pojo.AppVersion;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AppversionServiceImpl implements AppversionService{

    @Resource
    private AppVersionMapper mapper;

    public AppVersionMapper getMapper() {
        return mapper;
    }

    public void setMapper(AppVersionMapper mapper) {
        this.mapper = mapper;
    }

    public List<AppVersion> appversionInfo(Integer appId) {
        return mapper.appversionInfo(appId);
    }

    public int addVersion(AppVersion appVersion) {
        return mapper.addVersion(appVersion);
    }

    public Integer getVersion(Integer appid) {
        return mapper.getVersion(appid);
    }

    public AppVersion getAppVersionById(Integer id) {
        return mapper.getAppVersionById(id);
    }

    public int deleteApkFile(Integer id) {
        return mapper.deleteApkFile(id);
    }
}
