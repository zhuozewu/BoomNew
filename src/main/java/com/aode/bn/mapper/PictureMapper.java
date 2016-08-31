package com.aode.bn.mapper;

import com.aode.bn.domain.Picture;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 匆匆の过客 on 2016/8/22.
 */

@Repository
public interface PictureMapper {
    void add(Picture picture);
    Picture findPictureByNewsId(Integer nid);

    List<Picture> findAllPicture();

    void deletePicById(Integer id);

    void deletePicByNewsId(Integer id);
}
