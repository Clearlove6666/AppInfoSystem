package com.anxin.appinfosystem.service.appcategory;

import com.anxin.appinfosystem.dao.appcategory.AppcategoryMapper;
import com.anxin.appinfosystem.dao.appinfo.AppInfoMapper;
import com.anxin.appinfosystem.pojo.AppCategory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AppcategroyServiceImpl implements AppcategroyService{

    @Resource
    private AppcategoryMapper mapper;

    public AppcategoryMapper getMapper() {
        return mapper;
    }

    public void setMapper(AppcategoryMapper mapper) {
        this.mapper = mapper;
    }


    public List<AppCategory> findCategory(Integer parentId) {
        return mapper.findCategory(parentId);
    }

}
