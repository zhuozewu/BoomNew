package com.aode.bn.service.serviceImpl;

import com.aode.bn.domain.User;
import com.aode.bn.mapper.UserMapper;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;


    public User findByName(String name) {

        return userMapper.findUserByName(name);
    }

    public User findById(Integer id) {
        return userMapper.findById(id);
    }

    public User findByLoginNameAndPassword(User user) {

        return userMapper.findByLoginNameAndPassword(user);
    }

    public void addUser(User user) {

        userMapper.addUser(user);
    }

    public List<User> findAllUser() {
        return userMapper.findAllUser();
    }

    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    public void deleteUser(Integer id) {
        userMapper.deleteUser(id);
    }
}
