package com.yangrui.whale.generate.data;

/**
 * 列的数据信息
 * @author Zheng Jie
 * @date 2019-01-02
 */

public class ColumnInfo {

    // 数据库字段名称
    private String columnName;

    // 允许空值
    private String isNullable;

    // 数据库字段类型
    private String columnType;

    // 数据库字段注释
    private String columnComment;

    // 数据库字段键类型
    private String columnKey;

    // 额外的参数
    private String extra;

    // 查询 1:模糊 2：精确
    private String columnQuery;

    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }

    public String getIsNullable() {
        return isNullable;
    }

    public void setIsNullable(String isNullable) {
        this.isNullable = isNullable;
    }

    public String getColumnType() {
        return columnType;
    }

    public void setColumnType(String columnType) {
        this.columnType = columnType;
    }

    public String getColumnComment() {
        return columnComment;
    }

    public void setColumnComment(String columnComment) {
        this.columnComment = columnComment;
    }

    public String getColumnKey() {
        return columnKey;
    }

    public void setColumnKey(String columnKey) {
        this.columnKey = columnKey;
    }

    public String getExtra() {
        return extra;
    }

    public void setExtra(String extra) {
        this.extra = extra;
    }

    public String getColumnQuery() {
        return columnQuery;
    }

    public void setColumnQuery(String columnQuery) {
        this.columnQuery = columnQuery;
    }

    public String getColumnShow() {
        return columnShow;
    }

    public void setColumnShow(String columnShow) {
        this.columnShow = columnShow;
    }

    // 是否在列表显示
    private String columnShow;



}
