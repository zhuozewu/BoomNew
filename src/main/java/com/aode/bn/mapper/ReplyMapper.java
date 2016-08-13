package com.aode.bn.mapper;

import com.aode.bn.domain.Reply;
import org.springframework.stereotype.Repository;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Repository
public interface ReplyMapper {
    void addReply(Reply reply);
}
