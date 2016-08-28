package com.aode.bn.service;

import com.aode.bn.domain.Reply;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Service
public interface ReplyService {
    void addReply(Reply reply);

    Reply findById(Integer id);

    List<Reply> findAllReplyByReplyId(Integer rid );

    List<Reply> findAllReplyByNewsId(Integer nid);

    List<Reply> findAllReplyById(Integer id);
}
