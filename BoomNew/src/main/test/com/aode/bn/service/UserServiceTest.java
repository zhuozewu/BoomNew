package com.aode.bn.service;

import com.aode.bn.service.serviceImpl.UserServiceImpl;
import org.junit.Test;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
public class UserServiceTest {
    private UserService userService;
    @Test
    public void findByName() throws Exception {
        userService = new UserServiceImpl();
        System.out.println(userService.findByName("张三"));
    }
}