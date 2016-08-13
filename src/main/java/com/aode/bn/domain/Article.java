package com.aode.bn.domain;

import java.util.Date;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 * 抽取新闻与回复的公共部分
 */
public class Article {
    private String content ;
    private Date postTime ;     //新闻的发表时间
    private int replyCount ;   //回复的数量
    private User author ;   //作者

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
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

    public int getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(int replyCount) {
        this.replyCount = replyCount;
    }
}
