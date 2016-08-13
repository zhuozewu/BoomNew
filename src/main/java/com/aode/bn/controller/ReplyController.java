package com.aode.bn.controller;

import com.aode.bn.domain.News;
import com.aode.bn.domain.Reply;
import com.aode.bn.domain.User;
import com.aode.bn.service.NewsService;
import com.aode.bn.service.ReplyService;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Controller
public class ReplyController {
    @Autowired
    private ReplyService replyService;
    @Autowired
    private UserService userService;
    @Autowired
    private NewsService newsService;

    @RequestMapping(value="/reply", method = RequestMethod.POST)
    public String addReply(Reply reply){
        replyService.addReply(reply);
        return "redirect:/newsList";
    }
    @RequestMapping(value ="/replyInput",method =RequestMethod.GET)
    public String input(Map<String,Object> map, HttpSession session){
        Reply reply = new Reply();
        System.out.println("**"+session.getAttribute("uid"));
        User user =userService.findById((Integer)session.getAttribute("uid"));
        News news = newsService.findById((Integer)session.getAttribute("nid"));
        reply.setAuthor(user);
        reply.setNews(news);
        map.put("reply",reply);
        return "reply/editUI";
    }

}
