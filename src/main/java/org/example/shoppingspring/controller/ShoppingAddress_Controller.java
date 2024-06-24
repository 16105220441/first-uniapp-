package org.example.shoppingspring.controller;

import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.ShoppingAddress;
import org.example.shoppingspring.domain.ShoppingAddressDetail;
import org.example.shoppingspring.service.ShoppingAddress_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/address")
public class ShoppingAddress_Controller {
    @Autowired
    ShoppingAddress_Service shoppingAddress_service;

    public void add(int customerId){
        shoppingAddress_service.add(customerId);
    }
    public ShoppingAddress getInfo(int customerId){
        return shoppingAddress_service.getInfo(customerId);
    }

    @GetMapping("/get/list")
    public Map<String,Object> getList(@RequestParam int customerId){
        List<ShoppingAddressDetail> addressDetails =
                shoppingAddress_service.getList(customerId);
        Map<String,Object> map = new HashMap<>();
        map.put("shoppAddressList",addressDetails);
        return map;
    }

}
