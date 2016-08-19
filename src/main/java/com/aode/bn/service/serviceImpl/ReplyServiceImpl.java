package com.aode.bn.service.serviceImpl;

import com.aode.bn.domain.News;
import com.aode.bn.domain.Reply;
import com.aode.bn.mapper.NewsMapper;
import com.aode.bn.mapper.ReplyMapper;
import com.aode.bn.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Transactional
@Service
public class ReplyServiceImpl implements ReplyService{
    @Autowired
    private ReplyMapper replyMapper;
    @Autowired
    private NewsMapper newsMapper ;

    public void addReply(Reply reply) {
        if (reply.getNews()!= null){
            News news = newsMapper.findNewsById(reply.getNews().getNid()) ;
            news.setReplyCount(news.getReplyCount()+1);
            newsMapper.updateNews(news);
        }else{
            Reply fatherR = replyMapper.findById(reply.getReply().getRid());
            fatherR.setReplyCount(fatherR.getReplyCount()+1);
            replyMapper.updateReply(fatherR);
        }
        reply.setPostTime(new Date());
        replyMapper.addReply(reply);
    }

    public Reply findById(Integer id) {
        return replyMapper.findById(id);
    }

    public List<Reply> findAllReplyByNewsId(Integer nid) {
        return replyMapper.findAllReplyByNewsId(nid);
    }

    public List<Reply> findAllReplyById(Integer id) {
        return replyMapper.findAllNewsByUserId(id);
    }
}
