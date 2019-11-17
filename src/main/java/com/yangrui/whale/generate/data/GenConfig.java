package com.yangrui.whale.generate.data;

/**
 * 代码生成配置
 * @author Zheng Jie
 * @date 2019-01-03
 */

public class GenConfig {


    private Long id;

    // 包路径
    private String pack;

    // 模块名

    private String moduleName;

    // 前端文件路径
    private String path;

    // 前端文件路径

    private String apiPath;

    // 作者
    private String author;

    // 表前缀
    private String prefix;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getApiPath() {
        return apiPath;
    }

    public void setApiPath(String apiPath) {
        this.apiPath = apiPath;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public Boolean getCover() {
        return cover;
    }

    public void setCover(Boolean cover) {
        this.cover = cover;
    }

    // 是否覆盖
    private Boolean cover;
}
