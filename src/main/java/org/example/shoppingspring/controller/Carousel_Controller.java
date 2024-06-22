package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.Carousel;
import org.example.shoppingspring.service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/carousel")
public class Carousel_Controller {
    @Autowired
    CarouselService carouselService;

    @GetMapping("/get/img")
    public Map<String,Object> getCarouselImg(){
        List<Carousel> carouselList = carouselService.getCarouselImg();
        Map<String,Object> map = new HashMap<>();
        map.put("carouselImg",carouselList);
        return map;
    }
}

