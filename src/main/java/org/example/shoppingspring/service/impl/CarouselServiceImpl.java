package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.Carousel;
import org.example.shoppingspring.domain.Customers;
import org.example.shoppingspring.mapper.CarouselMapper;
import org.example.shoppingspring.service.CarouselService;
import org.example.shoppingspring.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CarouselServiceImpl implements CarouselService {
    @Autowired
    CarouselMapper carouselMapper;


    /**
     * @return
     */
    @Override
    public List<Carousel> getCarouselImg() {
        return carouselMapper.getCarouselImg();
    }
}
