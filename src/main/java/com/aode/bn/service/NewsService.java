package com.aode.bn.service;

import com.aode.bn.domain.News;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/9.
 */
@Service
public interface NewsService {
    void addNews(News news);
    List<News> findAllNews();
    void deleteNews(Integer id);
    News findById(Integer id);

    void updateNews(News news);
}
