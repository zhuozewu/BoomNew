package com.aode.bn.service.serviceImpl;


import com.aode.bn.domain.News;
import com.aode.bn.mapper.NewsMapper;
import com.aode.bn.mapper.UserMapper;
import com.aode.bn.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/9.
 */
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private UserMapper userMapper;

    public void addNews(News news) {
        System.out.println(userMapper.findById(3).getId());
        news.setPostTime(new Date()); //设置新闻的发表时间
        news.setAuthor(userMapper.findById(3)); // 设置作者
        newsMapper.addNews(news);
    }

    public List<News> findAllNews() {
        return newsMapper.findAllNews();
    }

    public void deleteNews(Integer id) {
        newsMapper.deleteNews(id);
    }

    public News findById(Integer id) {
        return newsMapper.findNewsById(id);
    }
}
