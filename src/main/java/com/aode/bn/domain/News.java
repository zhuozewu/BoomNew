package com.aode.bn.domain;

import java.util.Date;

/**
 * Created by 匆匆の过客 on 2016/8/8.
 */
public class News {
    private Integer id ;
    private String title ;
    private String content ;
    private Date postTime ;     //新闻的发表时间
    private String type ;       //新闻的类型
    private int replyCount ;    //新闻的回复数
    private int status ;     //新闻的状态（如头条、要闻等）

    private User author ;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(int replyCount) {
        this.replyCount = replyCount;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public int getStatus() {
        return status;

    }

    public void setStatus(int status) {
        this.status = status;
    }
}
