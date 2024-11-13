package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.TlCity;
import org.example.shoppingspring.domain.TlDistrict;
import org.example.shoppingspring.service.District_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/district")
public class District_Controller {

    @Autowired
    District_Service districtService;

    @GetMapping("/get/byCityId")
    public Map<String,Object> getListByCityId(@RequestParam int cityId){
        List<TlDistrict> cityList = districtService.selectByCityId(cityId);
        Map<String,Object> map = new HashMap<>();
        map.put("districtList",cityList);
        return map;
    }

}
