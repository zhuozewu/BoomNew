package com.aode.bn.domain;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
public class User {
    private Integer id ;
    private String name;
    private String password ;

    private Role role ; //一个用户只能拥有一个岗位（如果采用岗位与用户多对多，则权限认证将会变得繁琐，所以我这里采用岗位和用户一对多）
    private List<News> news ; //用户所发表的新闻列表

    public List<News> getNews() {
        return news;
    }

    public void setNews(List<News> news) {
        this.news = news;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
