package com.anxin.appinfosystem.service.datadictionary;

import com.anxin.appinfosystem.dao.datadictionary.DatadictionaryMapper;
import com.anxin.appinfosystem.pojo.DataDictionary;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class DatadictionaryServiceImpl implements DatadictionaryService{

    @Resource
    private DatadictionaryMapper mapper;

    public DatadictionaryMapper getMapper() {
        return mapper;
    }

    public void setMapper(DatadictionaryMapper mapper) {
        this.mapper = mapper;
    }


    public List<DataDictionary> findValueName(String typeCode) {
        return mapper.findValueName(typeCode);
    }
}
