package org.example.shoppingspring.controller;

import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.Category;
import org.example.shoppingspring.service.Category_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestController
@RequestMapping("/Category")
public class Category_Controller {
    @Autowired
    Category_Service category_service;

    @GetMapping
    public Map<String,Object> get_category(@RequestParam int parent_category_id){
        List<Category> categoryList = category_service.get_category(parent_category_id);
        Map<String,Object> map = new HashMap<>();
        map.put("categoryList",categoryList);
        return map;
    }

}
