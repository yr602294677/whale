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
  public String generate(){
    String table="zlzs_gjpc";
    List<ColumnInfo> list =getAllColumns(table);
    GenConfig genConfig =new GenConfig();
    genConfig.setId(000001l);
    genConfig.setPack("com.genersoft.lszlzs.zjgl.yygj");
    genConfig.setModuleName("lszlzs");
    genConfig.setPrefix("zlzs_");
    genConfig.setPath("E:\\workspace\\me\\front\\eladmin-qt\\src\\views\\test1111");
    genConfig.setAuthor("yangrui");
    try {
      GenUtil.generator(list,genConfig,table);
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
    return "代码生成成功！";
  }

  private List<ColumnInfo> getAllColumns(String table) {
    return generateService.getColumns(table);
  }
}
