package ${package}.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.StringUtils;
import org.loushang.bsp.security.context.BspInfo;
import org.loushang.bsp.security.context.GetBspInfo;
import org.loushang.framework.mybatis.PageUtil;
import org.loushang.framework.util.UUIDGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ${package}.data.${className}Data;
import ${package}.service.${className}Service;

/**
* ${chineseDesc}
* @author ${author}
* @date ${date}
*/
@Controller
@RequestMapping("/${changeClassName}")
public class ${className}Controller {


@Autowired
private ${className}Service ${changeClassName}Service;

@RequestMapping("/show${className}")
public String show${className}Page() {
return "lszlzs/xxgl/${className}/${className}_home";
return "${package}/${changeClassName}_home";
}

/**
* ${chineseDesc}展示数据分页查询
*
*/
@RequestMapping("/query${className}")
@ResponseBody
public Map
<String, Object> query${className}(@RequestBody Map<String, String> parameters) {Map<String, Object> dataMap = new HashMap<String, Object>();
List<${className}Data> ${className}List = new ArrayList<${className}Data>();

    BspInfo bspInfo = GetBspInfo.getBspInfo();
    String userorganid = bspInfo.getCorporationOrganId();
    String userId = bspInfo.getUserId();
    if (StringUtils.isEmpty(userorganid)) {
    if (!StringUtils.isEmpty(userId) && userId.equals("SUPERADMIN")) {
    System.out.println("管理员");
    }
    else {
    System.out.println("用户");
    }
    } else {
    if (userorganid != null && !"".equals(userorganid)) {
    parameters.put("userorganid", userorganid);
    }
    }

      ${className}List = ${className}Service.query${className}(parameters);
    dataMap.put("data", ${className}List);
    // 获取总记录条数
    int total = PageUtil.getTotalCount();
    dataMap.put("total", total != -1 ? total : ${className}List.size());
    return dataMap;
    }
    /**
    * 根据条件查询${chineseDesc}
    *
    */
    @RequestMapping("/queryPart${className}")
    @ResponseBody
    public Map
    <String
    , Object> queryPart${className}(@RequestBody Map
    <String
    , String> parameters) {
    Map
    <String
    , Object> dataMap = new HashMap
    <String
    , Object>();
    List
    <${className}Data> ${className}List = new ArrayList
      <${className}Data>();
        BspInfo bspInfo = GetBspInfo.getBspInfo();
        String userorganid = bspInfo.getCorporationOrganId();
        String userId = bspInfo.getUserId();
        if (StringUtils.isEmpty(userorganid)) {
        if (!StringUtils.isEmpty(userId) && userId.equals("SUPERADMIN")) {
        System.out.println("管理员");
        }
        else {
        System.out.println("用户");
        }
        } else {
        if (userorganid != null && !"".equals(userorganid)) {
        parameters.put("userorganid", userorganid);
        }
        }
          ${className}List = ${className}Service.queryPart${className}(parameters);
        dataMap.put("data", ${className}List);
        // 获取总记录条数
        int total = PageUtil.getTotalCount();
        dataMap.put("total", total != -1 ? total : ${className}List.size());
        return dataMap;
        }

        /***
        * ${chineseDesc}新增页面跳转
        *
        * @param request
        * @param
        */
        @RequestMapping("/add${className}")
        public ModelAndView add${className}() {
        Map
        <String
        , Object> model = new HashMap
        <String
        , Object>();
        Map
        <String
        , Object> map = new HashMap
        <String
        , Object>();
        BspInfo bspInfo = GetBspInfo.getBspInfo();

        String userorganid = bspInfo.getCorporationOrganId();
        String userId = bspInfo.getUserId();
        model.put("userId", userId);
        //权限
        if (StringUtils.isEmpty(userorganid)) {
        if (!StringUtils.isEmpty(userId) && userId.equals("SUPERADMIN")) {
        model.put("dkxs", 1);
        model.put("userorganid", userorganid);
        } else {
        model.put("dkxs", 0);
        model.put("userorganid", userorganid);
        }
        } else {
        model.put("dkxs", 2);
        model.put("userorganid", userorganid);
        map.put("userorganid", userorganid);
          ${className}Data ${className} = new ${className}Data();
        if (userorganid != null && !"".equals(userorganid)) {
          ${className} = ${className}Service.getDkmc(map);
        }
        model.put("${className}Data", ${className});
        }
        return new ModelAndView("lszlzs/xxgl/${className}/${className}_add", model);
        }

        /***
        * 新增${chineseDesc}
        *
        * @param request
        * @param
        */
        @RequestMapping("/save${className}")
        public ModelAndView save${className}(HttpServletRequest request, ${className}Data data) {
        String id = UUIDGenerator.getUUID();
        data.setId(id);
        Date testdate = new Date();
        String czsj = new SimpleDateFormat("yyyyMMdd HH:mm:ss").format(testdate);
        BspInfo bspInfo = GetBspInfo.getBspInfo();
        String czrxm = bspInfo.getUserName();
        data.setCzrxm(czrxm);
        data.setCzsj(czsj);
        data.setSfsc("1");
          ${className}Service.save${className}(data);

        Map
        <String
        , Object> model = new HashMap
        <String
        , Object>();
        Map
        <String
        , String> map = new HashMap
        <String
        , String>();
        map.put("id", id);
          ${className}Data ${className} = new ${className}Data();
        if (id != null && !"".equals(id)) {
          ${className} = ${className}Service.get${className}ById(map);
        }
        model.put("${className}Data", ${className});
        return new ModelAndView("lszlzs/xxgl/${className}/${className}_detail", model);
        }


        /**
        * 删除${chineseDesc}
        *
        * @param
        * @param
        */
        @RequestMapping("/delete${className}")
        public void delete${className}(@RequestParam(value = "id", required = true) String id) {
        Map
        <String
        , Object> model = new HashMap
        <String
        , Object>();
        String[] arrStrings = id.split(",");
        if (id != null && !"".equals(id)) {
          ${className}Service.delete${className}(arrStrings);
        }
        }

        /**
        * ${chineseDesc}修改页面跳转
        *
        * @param
        * @return 修改页面
        */
        @RequestMapping("/modify${className}")
        public ModelAndView modify${className}(@RequestParam(value = "id", required = true) String id) {
        Map
        <String
        , Object> model = new HashMap
        <String
        , Object>();
        Map
        <String
        , String> map = new HashMap
        <String
        , String>();
        map.put("id", id);
          ${className}Data ${className} = new ${className}Data();
        if (id != null && !"".equals(id)) {
          ${className} = ${className}Service.get${className}ById(map);
        }

        BspInfo bspInfo = GetBspInfo.getBspInfo();
        String userorganid = bspInfo.getCorporationOrganId();
        String userId = bspInfo.getUserId();
        //权限
        if (StringUtils.isEmpty(userorganid)) {
        if (!StringUtils.isEmpty(userId) && userId.equals("SUPERADMIN")) {
        model.put("dkxs", 1);
        model.put("userorganid", userorganid);
        } else {
        model.put("dkxs", 0);
        model.put("userorganid", userorganid);
        }
        } else {
        model.put("dkxs", 2);
        model.put("userorganid", userorganid);
        }
        model.put("${className}Data", ${className});
        return new ModelAndView("lszlzs/xxgl/${className}/${className}_modify", model);
        }

        /***
        * 更新${chineseDesc}
        *
        * @param request
        * @param
        */
        @RequestMapping("/update${className}")
        public ModelAndView update${className}(HttpServletRequest request, ${className}Data data) {
        String id = data.getId();
          ${className}Service.update${className}(data);
        Map
        <String
        , Object> model = new HashMap
        <String
        , Object>();
        Map
        <String
        , String> map = new HashMap
        <String
        , String>();
        map.put("id", id);
          ${className}Data ${className} = new ${className}Data();
        if (id != null && !"".equals(id)) {
          ${className} = ${className}Service.get${className}ById(map);
        }
        model.put("${className}Data", ${className});
        return new ModelAndView("lszlzs/xxgl/${className}/${className}_detail", model);
        }

        /***
        * ${chineseDesc}明细页面跳转
        *
        * @param request
        * @param
        */
        @RequestMapping("/show${className}Detail")
        public ModelAndView show${className}Detail(@RequestParam(value = "id", required = true) String id) {
        Map
        <String
        , Object> model = new HashMap
        <String
        , Object>();
        Map
        <String
        , String> map = new HashMap
        <String
        , String>();
        map.put("id", id);
          ${className}Data ${className} = new ${className}Data();
        if (id != null && !"".equals(id)) {
          ${className} = ${className}Service.get${className}ById(map);
        }
        model.put("${className}Data", ${className});
        return new ModelAndView("lszlzs/xxgl/${className}/${className}_detail", model);
        }


        /**
        * 编辑基地启用状态
        * @param id 主键
        * @param state 状态
        */
        @RequestMapping("/edit${className}Zt")
        public void edit${className}Zt(@RequestParam(value = "id", required = true) String id,@RequestParam(value = "state", required = true) String state) {
        try{
        Map
        <String
        , String> map = new HashMap
        <String
        , String>();
        map.put("id", id);
        BspInfo bspInfo = GetBspInfo.getBspInfo();
        String userName = bspInfo.getUserName();
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String time = dateFormat.format(date);
        map.put("czrxm",userName);
        map.put("czsj",time);
        map.put("qyzt", state);
          ${className}Service.edit${className}Zt(map);
        } catch(Exception e){
        e.printStackTrace();
        }
        }

        }