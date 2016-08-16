package com.aode.bn.mapper;

import com.aode.bn.domain.News;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/9.
 */
@Repository
public interface NewsMapper {
    void addNews(News news); //news代表一个新闻，newsList代表多个新闻
    void deleteNews(Integer id);
    List<News> findAllNews();
    News findNewsById(Integer id);

    void updateNews(News news);

    List<News> findAllNewsByUserId(Integer id);
}
