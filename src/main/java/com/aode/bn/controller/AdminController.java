package com.aode.bn.controller;

import com.aode.bn.domain.Privilege;
import com.aode.bn.domain.User;
import com.aode.bn.interceptors.AuthInterceptor;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by 匆匆の过客 on 2016/8/28.
 */

@Controller
public class AdminController {
    @Autowired
    private UserService userService ;

    @RequestMapping("inLogin")
    public String inLogin(User loginuser,HttpSession session){
        User user = userService.findByLoginNameAndPassword(loginuser);
        if (user == null) {
            System.out.println("用户名或密码错误");
            return "user/fail";
        } else {
            session.setAttribute("loginUser",user);
            session.setAttribute(AuthInterceptor.SESSION_USERID, user.getId());
            Set<String> privileges = new HashSet<String>();
            for (Privilege privilege:user.getRole().getPrivileges()){
                privileges.add(privilege.getUrl());
                System.out.println(privilege.getPrivilege());
            }

            session.setAttribute(AuthInterceptor.SESSION_AUTHS,privileges);
            return "redirect:/forWard";
        }
    }

    @RequestMapping("forWard")
    public String forWard(){
        return "admin/index";
    }


    @RequestMapping("userInput-2")
    public String input(Map<String,Object> map){
        map.put("user",new User());
        return "user/editUI-2";
    }

    @RequestMapping("addUser")
    public String input(User user){
        userService.addUser(user);
        return "redirect:/newsList-2";
    }

    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.removeAttribute("loginUser");
        return "user/success";
    }

}
