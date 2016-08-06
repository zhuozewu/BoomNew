package com.aode.bn.mapper;

import com.aode.bn.domain.User;
import org.springframework.stereotype.Repository;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 *
 */
@Repository
public interface UserMapper {
    User findUserByName(String name);
}
