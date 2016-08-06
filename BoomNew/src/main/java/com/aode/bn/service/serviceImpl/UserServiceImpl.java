package com.aode.bn.service.serviceImpl;

import com.aode.bn.domain.User;
import com.aode.bn.mapper.UserMapper;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;


    public User findByName(String name) {
        return userMapper.findUserByName(name);
    }

    public User findByLoginNameAndPassword(User user) {
        return null;
    }

    public void addUser(User user) {

    }
}
