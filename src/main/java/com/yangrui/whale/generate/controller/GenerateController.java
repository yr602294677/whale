package com.yangrui.whale.generate.controller;

import com.yangrui.whale.generate.data.ColumnInfo;
import com.yangrui.whale.generate.data.GenConfig;
import com.yangrui.whale.generate.service.GenerateService;
import com.yangrui.whale.generate.utils.GenUtil;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/generate")
public class GenerateController {

  @Autowired
  GenerateService generateService;

  @RequestMapping("/generate")
  public void generate(){
    String table="book";
    List<ColumnInfo> list =getAllColumns(table);
    GenConfig genConfig =new GenConfig();
    genConfig.setId(000001l);
    genConfig.setPack("com.yr.gen");
    genConfig.setModuleName("gen");

    genConfig.setPath("E:\\workspace\\me\\front\\eladmin-qt\\src\\views\\test1111");
    genConfig.setAuthor("yangrui");
    try {
      GenUtil.generator(list,genConfig,"book");
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  private List<ColumnInfo> getAllColumns(String table) {
    return generateService.getColumns(table);
  }
}
