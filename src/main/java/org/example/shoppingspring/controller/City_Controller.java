package org.example.shoppingspring.controller;

import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.TlCity;
import org.example.shoppingspring.service.City_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/city")
public class City_Controller {
    @Autowired
    City_Service cityService;

    @GetMapping("/get/byProvinceId")
    public Map<String,Object> getList(@RequestParam int provinceId){
        List<TlCity> cityList = cityService.selectByProvinceId(provinceId);
        Map<String,Object> map = new HashMap<>();
        map.put("cityList",cityList);
        return map;
    }

    @GetMapping("/getCityId")
    public Map<String,Object> getCity(@RequestParam String cityName){
        int cityId = cityService.selectByCityName(cityName);
        Map<String,Object> map = new HashMap<>();
        map.put("cityId",cityId);
        return map;
    }
}
