package com.aode.bn.service;

import com.aode.bn.domain.Reply;
import org.springframework.stereotype.Service;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Service
public interface ReplyService {
    void addReply(Reply reply);
}
