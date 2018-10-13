package com.anxin.appinfosystem.service.appInfo;

import com.anxin.appinfosystem.dao.appinfo.AppInfoMapper;
import com.anxin.appinfosystem.pojo.AppCategory;
import com.anxin.appinfosystem.pojo.AppInfo;
import com.anxin.appinfosystem.pojo.DataDictionary;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AppInfoServiceImpl implements AppInfoService{

    @Resource
    private AppInfoMapper mapper;

    public AppInfoMapper getMapper() {
        return mapper;
    }

    public void setMapper(AppInfoMapper mapper) {
        this.mapper = mapper;
    }

//
//    public List<DataDictionary> findValueName(String typeCode) {
//        return mapper.findValueName(typeCode);
//    }


    public int add(AppInfo appInfo) throws Exception {
        return mapper.add(appInfo);
    }

    public int modify(AppInfo appInfo) throws Exception {
        return mapper.modify(appInfo);
    }

    public int deleteAppInfoById(Integer delId) throws Exception {
        return mapper.deleteAppInfoById(delId);
    }

    public List<AppInfo> getAppInfoList(String querySoftwareName, Integer queryStatus, Integer queryCategoryLevel1, Integer queryCategoryLevel2, Integer queryCategoryLevel3, Integer queryFlatformId, Integer devId, Integer currentPageNo, Integer pageSize) throws Exception {
        return mapper.getAppInfoList(querySoftwareName,queryStatus,queryCategoryLevel1,queryCategoryLevel2,queryCategoryLevel3,queryFlatformId,devId,((currentPageNo-1)*pageSize),pageSize);
    }

    public int getAppInfoCount(String querySoftwareName, Integer queryStatus, Integer queryCategoryLevel1, Integer queryCategoryLevel2, Integer queryCategoryLevel3, Integer queryFlatformId, Integer devId) throws Exception {
        return mapper.getAppInfoCount(querySoftwareName,queryStatus,queryCategoryLevel1,queryCategoryLevel2,queryCategoryLevel3,queryFlatformId,devId);
    }

    public AppInfo getAppInfo(Integer id, String APKName) throws Exception {
        return mapper.getAppInfo(id,APKName);
    }

    public int deleteAppLogo(Integer id) throws Exception {
        return mapper.deleteAppLogo(id);
    }

    public int updateVersionId(Integer versionId, Integer appId) throws Exception {
        return mapper.updateVersionId(versionId,appId);
    }

    public int updateSaleStatusByAppId(Integer appId) throws Exception {
        return mapper.updateSaleStatusByAppId(appId);
    }

    public int updateSatus(Integer status, Integer id) throws Exception {
        return mapper.updateSatus(status,id);
    }
}
