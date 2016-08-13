package com.aode.bn.service.serviceImpl;

import com.aode.bn.domain.Reply;
import com.aode.bn.mapper.ReplyMapper;
import com.aode.bn.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Service
public class ReplyServiceImpl implements ReplyService{
    @Autowired
    private ReplyMapper replyMapper;

    public void addReply(Reply reply) {
        reply.setPostTime(new Date());
        replyMapper.addReply(reply);
    }
}
