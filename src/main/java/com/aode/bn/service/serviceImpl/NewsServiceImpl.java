package com.aode.bn.service.serviceImpl;


import com.aode.bn.domain.News;
import com.aode.bn.domain.Picture;
import com.aode.bn.mapper.NewsMapper;
import com.aode.bn.mapper.PictureMapper;
import com.aode.bn.mapper.UserMapper;
import com.aode.bn.service.NewsService;
import com.aode.bn.util.DealWithNewsType;
import com.aode.bn.util.FileUploadUtil;
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

    final String savePath = "/images/";
    @Autowired
    private NewsMapper newsMapper;
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private PictureMapper pictureMapper ;

    public List<String> findAllNewsType() {
        return DealWithNewsType.removeDuplicate(newsMapper.findAllNewsType());
    }

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
        News news = newsMapper.findNewsById(id);
        if(news.getPicUrl().equals(" ")){
        FileUploadUtil.pictureDownload(pictureMapper.findPictureByNewsId(id),savePath);
        }

        return news;
    }

    public void updateNews(News news) {
        newsMapper.updateNews(news);
    }

    public List<News> findAllNewsByUserId(Integer id) {
        return newsMapper.findAllNewsByUserId(id);
    }

    public void addPicture(Picture pic) {
        pictureMapper.add(pic);
        System.out.println(pic.getId());
        String picUrl = savePath+pic.getId()+pic.getSuffix();
        News news = newsMapper.findNewsById(pic.getNews().getNid());
        news.setPicUrl(picUrl);
        newsMapper.updateNews(news);
    }

    public String findPictureByNewsId(Integer id) {
        Picture picture = pictureMapper.findPictureByNewsId(id);
        return FileUploadUtil.pictureDownload(picture,savePath);
    }

    public void upLoadAllPicture() {
        List<Picture> picList = pictureMapper.findAllPicture();
        for(Picture pic : picList){
            FileUploadUtil.pictureDownload(pic,savePath);
        }
    }

    public List<News> findAllNewsByType(String type) {
        return newsMapper.findAllNewsByType(type);
    }
}
