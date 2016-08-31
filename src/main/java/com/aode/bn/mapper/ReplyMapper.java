package com.aode.bn.mapper;

import com.aode.bn.domain.Reply;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/13.
 */
@Repository
public interface ReplyMapper {
    void addReply(Reply reply);

    Reply findById(Integer id);

    List<Reply> findAllReplyByReplyId(Integer rid);

    List<Reply> findAllReplyByNewsId(Integer nid);

    List<Reply> findAllReplyByUserId(Integer id);

    void updateReply(Reply reply);

    void deleteReplyByUserId(Integer id);

    void deleteReplyByNewsId(Integer id);
}
