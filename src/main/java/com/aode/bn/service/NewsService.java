package com.aode.bn.service;

import com.aode.bn.domain.News;
import com.aode.bn.domain.Picture;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/9.
 */
@Service
public interface NewsService {

    List<String> findAllNewsType();
    void addNews(News news);
    List<News> findAllNews();
    void deleteNews(Integer id);
    News findById(Integer id);

    void updateNews(News news);

    List<News> findAllNewsByUserId(Integer id);

    void addPicture(Picture pic);


    String findPictureByNewsId(Integer id );

    void upLoadAllPicture();

    List<News> findAllNewsByType(String type);

}
