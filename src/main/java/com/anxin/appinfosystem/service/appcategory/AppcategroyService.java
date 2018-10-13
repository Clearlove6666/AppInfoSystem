package com.anxin.appinfosystem.service.appcategory;

import com.anxin.appinfosystem.pojo.AppCategory;

import java.util.List;

public interface AppcategroyService {
    /**
     * 根据parentId查询分类
     * @return
     */
    public List<AppCategory> findCategory(Integer parentId);
}
