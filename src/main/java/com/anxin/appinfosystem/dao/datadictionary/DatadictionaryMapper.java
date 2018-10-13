package com.anxin.appinfosystem.dao.datadictionary;

import com.anxin.appinfosystem.pojo.DataDictionary;

import java.util.List;

public interface DatadictionaryMapper {
    /**
     * 根据typeCode 查询所需要的值
     * @param typeCode
     * @return
     */
    public List<DataDictionary> findValueName(String typeCode);
}
