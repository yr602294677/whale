package ${package}.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ${package}.dao.${className}Mapper;
import ${package}.data.${className}Data;
import ${package}.service.${className}Service;

/**
* ${chineseDesc}
* @author ${author}
* @date ${date}
*/
@Service("${changeClassName}Service")
public class ${className}ServiceImpl implements ${className}Service {

@Autowired
private ${className}Mapper ${changeClassName}Mapper;

public List<${className}Data> query${className}(Map<String, String> parameters) {
    List<${className}Data> ${changeClassName}List = ${changeClassName}Mapper.query${className}(parameters);
        return ${changeClassName}List;
        }

        public void save${className}(${className}Data data) {
        ${changeClassName}Mapper.save${className}(data);

        }

        public ${className}Data get${className}ById(Map<String, String> map) {
        ${className}Data ${changeClassName} = ${changeClassName}Mapper.get${className}ById(map);
        return ${changeClassName};
        }

        public void delete${className}(String[] arrStrings) {
        ${changeClassName}Mapper.delete${className}(arrStrings);

        }

        public List<${className}Data> queryPart${className}(Map<String, String> parameters) {
            List<${className}Data> ${changeClassName}List = ${changeClassName}Mapper.queryPart${className}(parameters);
                return ${changeClassName}List;
                }

                public void update${className}(${className}Data data) {
                ${changeClassName}Mapper.update${className}(data);

                }

                @Override
                public List<${className}Data> checkQyzt(String[] arrStrings) {
                    return ${changeClassName}Mapper.checkQyzt(arrStrings);
                    }

                    public ${className}Data get${className}mc(Map<String, Object> map) {
                    ${className}Data ${changeClassName} = ${changeClassName}Mapper.get${className}mc(map);
                    return ${changeClassName};
                    }


                    @Override
                    public void edit${className}Zt(Map<String, String> map) {
                    ${changeClassName}Mapper.edit${className}Zt(map);
                    }

                    }
