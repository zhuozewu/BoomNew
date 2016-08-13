package com.aode.bn.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
@Component
public class UserServiceTest {
    @Autowired
    private UserService userService;
    @Test
    public void findByName() throws Exception {
        System.out.println(userService.findByName("张三"));
    }
}