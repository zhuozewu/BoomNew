package com.aode.bn.controller;

import com.aode.bn.domain.User;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */

@RequestMapping("user")
@Controller
public class UserControll {
    @Autowired
    private UserService userService;

    private User user ;


    @RequestMapping("mybatistest")
    public String mybatisTest(){
        user = userService.findByName("张三");
        System.out.println(user.getPassword());
        return "user/success";
    }
    @RequestMapping("/login")
    public String login(User loginuser,HttpSession session) {
        System.out.println(loginuser.getName());
        user = userService.findByLoginNameAndPassword(loginuser);
        if (user == null) {
            System.out.println("用户名或密码错误");
            return "fail";
        } else {
            session.setAttribute("loginuser", user);
            return "user/success";
        }
    }

    @RequestMapping("/list")
    public String list(Map<String,Object> map){
        map.put("users",userService.findAllUser());
        return "user/list";
    }

    /*
	 * 增加用户
	 */
        @RequestMapping(value="addUser", method= RequestMethod.POST)
        public String addUser(User user){
            userService.addUser(user);
            return "user/success";
        }
        /*
	 * 注册
	 */
        @RequestMapping("register")
        public String register(Map<String,Object> map){
            map.put("user", new User()); //
            return "user/editUI";
        }


}
