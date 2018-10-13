package com.anxin.appinfosystem.dao.appcategory;

import com.anxin.appinfosystem.pojo.AppCategory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppcategoryMapper {
    /**
     * 根据父级id查询分类
     * @return
     */
    public List<AppCategory> findCategory(@Param("parentId") Integer parentId);
}
