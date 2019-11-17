package com.yangrui.whale.generate.dao;

import com.yangrui.whale.generate.data.ColumnInfo;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface GenerateMapper {

  List<ColumnInfo> getColumns(String table);
}
