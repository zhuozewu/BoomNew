package com.aode.bn.service.serviceImpl;

import com.aode.bn.domain.Privilege;
import com.aode.bn.mapper.PrivilegeMapper;
import com.aode.bn.service.PrivilegeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/17.
 */
@Service
public class PrivilegeServiceImpl implements PrivilegeService{
    @Autowired
    private PrivilegeMapper privilegeMapper ;
    public List<Privilege> findAllprivilege() {
        return privilegeMapper.findAllprivilege();
    }
}
