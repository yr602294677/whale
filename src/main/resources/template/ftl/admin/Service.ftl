package ${package}.service;

import java.util.List;
import java.util.Map;
import ${package}.data.${className}Data;

/**
* ${chineseDesc}
* @author ${author}
* @date ${date}
*/
public interface ${className}Service {

List<${className}Data> query${className}(Map<String, String> parameters);

    void save${className}(${className}Data data);

    ${className}Data get${className}ById(Map<String, String> map);

    void delete${className}(String[] arrStrings);

    List<${className}Data> queryPart${className}(Map<String, String> parameters);

    void update${className}(${className}Data data);

    List<${className}Data> checkQyzt(String[] arrStrings);

    ${className}Data get${className}mc(Map<String, Object> map);

    void edit${className}Zt(Map<String, String> map);

    }