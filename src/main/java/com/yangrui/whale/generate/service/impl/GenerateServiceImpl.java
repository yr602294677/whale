package com.yangrui.whale.generate.service.impl;

import com.yangrui.whale.generate.dao.GenerateMapper;
import com.yangrui.whale.generate.data.ColumnInfo;
import com.yangrui.whale.generate.service.GenerateService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("generateService")
public class GenerateServiceImpl implements GenerateService {

  @Autowired
  GenerateMapper generateMapper;

  @Override
  public List<ColumnInfo> getColumns(String table) {
    List<ColumnInfo> columnInfos = generateMapper.getColumns(table);
    return columnInfos;
  }
}
