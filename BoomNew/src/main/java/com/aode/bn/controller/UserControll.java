package com.aode.bn.controller;

import com.aode.bn.domain.User;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 */

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
    @RequestMapping(value ="/user/{id}" ,method = RequestMethod.GET)
    public String getUserById(@PathVariable("id") Integer id ,Map<String,Object> map){
        map.put("user" ,userService.findById(id));
        System.out.println(userService.findById(id).getName());
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

    @RequestMapping("/userList")
    public String list(Map<String,Object> map){
        map.put("users",userService.findAllUser());
        return "user/list";
    }
    /**
     * 为UPDATE做好填充user准备
     */
    @ModelAttribute
    public void getUser(@RequestParam(value="id",required=false)Integer id, Map<String ,Object> map){
        System.out.println(id);
        if(id!=null){
            System.out.println(userService.findById(id).getName());
            map.put("user", userService.findById(id));
        }
    }
    /*
	 * 增加用户
	 */
    @RequestMapping(value="/user", method= RequestMethod.POST)
    public String addUser(User user){
            userService.addUser(user);
            return "user/success";
    }
    /*
     *更新用户
     */
    @RequestMapping(value="/user", method= RequestMethod.PUT)
    public String updateUser(User user){
        userService.updateUser(user);
        return "user/success";
    }
    /*
     *删除用户
     */
    @RequestMapping(value="/user/{id}", method=RequestMethod.DELETE)
    public String deleteUser(@PathVariable("id")Integer id){
        userService.deleteUser(id);
        return "redirect:/userList";
    }
    /*
	 * 注册
	 */
        @RequestMapping("register")
        public String register(Map<String,Object> map){
            map.put("user", new User()); //
            return "user/editUI";
    }
    /*
    * 转到输入页面
    */
    @RequestMapping(value ="/userInput/{id}",method =RequestMethod.GET)
    public String input(@PathVariable("id") Integer id,Map<String,Object> map){
        map.put("user",userService.findById(id));
        return "user/editUI";
    }


}
