package com.aode.bn.service;

import com.aode.bn.domain.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */
@Service
public interface UserService {
    User findByName(String name);
    User findById(Integer id);
    User findByLoginNameAndPassword(User user);
    void addUser(User user);
    List<User> findAllUser();
    void updateUser(User user);

    void deleteUser(Integer id);
}
