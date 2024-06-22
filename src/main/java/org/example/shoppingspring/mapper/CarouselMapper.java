package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.Carousel;

import java.util.List;

@Mapper
public interface CarouselMapper {
    List<Carousel> getCarouselImg();
}
