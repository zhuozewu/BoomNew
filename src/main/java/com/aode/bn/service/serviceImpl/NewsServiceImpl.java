package com.aode.bn.service.serviceImpl;


import com.aode.bn.domain.News;
import com.aode.bn.mapper.NewsMapper;
import com.aode.bn.mapper.UserMapper;
import com.aode.bn.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/9.
 */
@Transactional
@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private UserMapper userMapper;

    public void addNews(News news) {
        news.setPostTime(new Date()); //设置新闻的发表时间
        newsMapper.addNews(news);
    }

    public List<News> findAllNews() {
        return newsMapper.findAllNews();
    }

    public void deleteNews(Integer id) {
        newsMapper.deleteNews(id);
    }

    public News findById(Integer id) {
        System.out.println("^^"+newsMapper.findNewsById(id).getAuthor().getName());
        return newsMapper.findNewsById(id);
    }

    public void updateNews(News news) {
        newsMapper.updateNews(news);
    }

    public List<News> findAllNewsByUserId(Integer id) {
        return newsMapper.findAllNewsByUserId(id);
    }
}
