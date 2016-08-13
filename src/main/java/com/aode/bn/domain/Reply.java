package com.aode.bn.domain;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
public class Reply extends Article{
    private Long rid ;
    private News news;  //评论所属的新闻
    private Reply reply; //评论的父评论
    private List<Reply> replys;  //回复评论的评论的集合

    public Long getRid() {
        return rid;
    }

    public void setRid(Long rid) {
        this.rid = rid;
    }

    public News getNews() {
        return news;
    }

    public Reply getReply() {
        return reply;
    }

    public void setReply(Reply reply) {
        this.reply = reply;
    }

    public void setNews(News news) {
        this.news = news;
    }

    public List<Reply> getReplys() {
        return replys;
    }

    public void setReplys(List<Reply> replys) {
        this.replys = replys;
    }
}
