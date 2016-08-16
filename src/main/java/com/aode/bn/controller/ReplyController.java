package com.aode.bn.controller;

import com.aode.bn.domain.Reply;
import com.aode.bn.service.NewsService;
import com.aode.bn.service.ReplyService;
import com.aode.bn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Controller
public class ReplyController extends RoleController {
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

    /**
     * 从连接获取用户id和新闻的id
     * @param uid 评论人的id
     * @param nid 所属新闻的id
     * @param map
     * @return
     */
    @RequestMapping(value ="/replyInput/{uid}_{nid}_{rid}",method =RequestMethod.GET)
    public String input(@PathVariable("uid") Integer uid , @PathVariable("nid") Integer nid,@PathVariable("rid") Integer rid, Map<String,Object> map, HttpSession session){
        if (rid == -1) {
            session.setAttribute("uid", uid);
            session.setAttribute("nid", nid);
        }else{
            session.setAttribute("uid", uid);
            session.setAttribute("rid", rid);
        }
        map.put("reply",new Reply());
        return "reply/editUI";
    }


    @RequestMapping(value ="/allReplyByNewsId/{nid}",method =RequestMethod.GET)
    public String allReplyByNewsId(@PathVariable("nid") Integer nid, Map<String,Object> map){
        map.put("replys",replyService.findAllReplyByNewsId(nid));
        return "reply/list";
    }

    /**
     * 为UPDATE做好填充news准备
     */
    @ModelAttribute
    public void getReply(@RequestParam(value="id",required=false)Integer id, Map<String ,Object> map,HttpSession session){
    }

    @ModelAttribute
    public void getReply(Map<String ,Object> map,HttpSession session){
        Reply reply = new Reply();
        if(session.getAttribute("uid")!= null && session.getAttribute("nid")!=null){
            System.out.println("nid:"+session.getAttribute("nid"));
            reply.setAuthor(userService.findById((Integer) session.getAttribute("uid")));
            reply.setNews(newsService.findById((Integer) session.getAttribute("nid")));
            session.removeAttribute("uid");
            session.removeAttribute("nid");
        }else if (session.getAttribute("uid")!= null && session.getAttribute("rid")!=null){
            System.out.println("rid:"+session.getAttribute("rid"));
            System.out.println("uid:"+session.getAttribute("uid"));
            reply.setAuthor(userService.findById((Integer) session.getAttribute("uid")));
            reply.setReply(replyService.findById((Integer) session.getAttribute("rid")));
            session.removeAttribute("uid");
            session.removeAttribute("rid");
        }
        map.put("reply", reply);
    }

}
