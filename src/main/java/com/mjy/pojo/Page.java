package com.mjy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Page<T> {
    private int pageNum;//当前页码
    private int pageStartIndex;//当前页的起始索引
    private int pageSize;//页面所包含的数据多少
    private int totalRows;//总记录行数 在数据库中进行查询的
    private int totalPages;//总页码数
    private List<T> datas;//当前页面的数据

    public Page() {
        this.pageNum=1;
        this.pageSize=3;
        datas=new ArrayList<>();
    }



    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageStartIndex() {
        return (pageNum-1)*pageSize;
    }

    public void setPageStartIndex(int pageStartIndex) {
        this.pageStartIndex = pageStartIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(int totalRows) {
        this.totalRows = totalRows;
    }

    public int getTotalPages() {
        if (totalRows%pageSize==0){
            totalPages=totalRows/pageSize;
        }else{
            totalPages=totalRows/pageSize+1;
        }
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }

    public List<T> getDatas() {
        return datas;
    }

    public void setDatas(List<T> datas) {
        this.datas = datas;
    }
}
