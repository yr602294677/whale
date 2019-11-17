package com.yangrui.whale.generate.service;

import com.yangrui.whale.generate.data.ColumnInfo;
import java.util.List;

public interface GenerateService {

  List<ColumnInfo> getColumns(String name);
}
