package com.aode.bn.controller;

import com.aode.bn.domain.Role;
import com.aode.bn.service.PrivilegeService;
import com.aode.bn.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by 匆匆の过客 on 2016/8/16.
 */
@Controller
public class RoleController {

    @Autowired
    private PrivilegeService privilegeService;
    private RoleService roleService;

    @RequestMapping(value ="role",method = RequestMethod.POST)
    public String addRole(Role role){
        roleService.addRole(role);
        return "role/list";
    }

    @RequestMapping("roleInput")
    public String input(Map<String,Object>map){
        map.put("privileges",privilegeService.findAllprivilege());
        return "role/editUI";
    }


}
