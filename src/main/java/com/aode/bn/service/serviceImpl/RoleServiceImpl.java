package com.aode.bn.service.serviceImpl;

import com.aode.bn.domain.Role;
import com.aode.bn.mapper.RoleMapper;
import com.aode.bn.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 匆匆の过客 on 2016/8/17.
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;
    public void addRole(Role role) {
        roleMapper.addRole(role);
        if(role.getPrivilegeIds().size()!=0) {
            for (int i = 0; i < role.getPrivilegeIds().size(); i++) {
                roleMapper.insertKFTable(role.getId(), role.getPrivilegeIds().get(i));
            }
        }
    }

    public Role findRoleById(Integer id) {
        return roleMapper.findRoleById(id);
    }
}
