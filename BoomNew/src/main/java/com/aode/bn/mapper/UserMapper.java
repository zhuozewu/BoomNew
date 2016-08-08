package com.aode.bn.mapper;

import com.aode.bn.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 *
 */
@Repository
public interface UserMapper {
    User findUserByName(String name);
    User findByLoginNameAndPassword(User user);
    void addUser(User user);
    List<User> findAllUser();
    void updateUser(User user);
    User findById(Integer id);
    void deleteUser(Integer id);
}
