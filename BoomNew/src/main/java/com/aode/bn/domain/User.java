package com.aode.bn.domain;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
public class User {
    private Long id ;
    private String name;
    private String password ;
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
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
}
