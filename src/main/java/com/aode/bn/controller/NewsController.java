package com.aode.bn.controller;

import com.aode.bn.annotation.Auth;
import com.aode.bn.domain.News;
import com.aode.bn.service.NewsService;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * Created by 匆匆の过客 on 2016/8/9.
 */
@Controller
public class NewsController{
    @Autowired
    private NewsService newsService;
    @Autowired
    private UserService userService;
    @RequestMapping(value ="news",method = RequestMethod.POST)
    public String addNews(News news){
        newsService.addNews(news);
        return "redirect:/newsList";
    }
    /*
     *更新用户
     */
    @RequestMapping(value="/news", method= RequestMethod.PUT)
    public String updateUser(News news){
        newsService.updateNews(news);
        return "redirect:/newsList";
    }
    /*
     *删除新闻
     */
    @RequestMapping(value="/news/{id}", method=RequestMethod.DELETE)
    public String deleteNews(@PathVariable("id")Integer id){
        newsService.deleteNews(id);
        return "redirect:/newsList";
    }

    @Auth("newsList")
    @RequestMapping("/newsList")
    public String list(Map<String,Object> map){
        map.put("newsList",newsService.findAllNews());
        return "news/list";
    }
    /*
     * 转到新闻输入页面
     */
    @RequestMapping(value ="/newsInput/{id}",method =RequestMethod.GET)
    public String input(@PathVariable("id") Integer id,Map<String,Object> map){
        map.put("news",newsService.findById(id));
        map.put("users",userService.findAllUser());
        return "news/editUI";
    }
    /*
     * 转到新闻输入页面
     */
    @RequestMapping(value ="/newsInput",method =RequestMethod.GET)
    public String input(Map<String,Object> map){
        map.put("news",new News());
        map.put("users",userService.findAllUser());
        return "news/editUI";
    }

    /**
     * 为UPDATE做好填充news准备
     */
    @ModelAttribute
    public void getNews(@RequestParam(value="id",required=false)Integer id, Map<String ,Object> map){
        if(id!=null){
            map.put("news", newsService.findById(id));
        }
    }
}
