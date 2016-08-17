package com.aode.bn.mapper;

import com.aode.bn.domain.Role;
import org.springframework.stereotype.Repository;

/**
 * Created by 匆匆の过客 on 2016/8/17.
 */
@Repository
public interface RoleMapper {

    void addRole(Role role);
    void insertKFTable(Integer id ,Integer privilegeId);

    Role findRoleById(Integer id);
}
