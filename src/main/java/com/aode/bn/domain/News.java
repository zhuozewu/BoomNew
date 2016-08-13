package com.aode.bn.domain;

/**
 * Created by 匆匆の过客 on 2016/8/8.
 */
public class News extends  Article{
    private Integer nid ;
    private String title ;
    private String type ;       //新闻的类型
    private int status ;     //新闻的状态（如头条、要闻等）

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getStatus() {
        return status;

    }

    public void setStatus(int status) {
        this.status = status;
    }
}
