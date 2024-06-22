package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.ParentCategory;
import org.example.shoppingspring.service.ParentCategory_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/ParentCategory")
public class ParentCategory_Controller {
    @Autowired
    ParentCategory_Service parentCategory_service;

    @GetMapping
    public Map<String,Object> get_parentCategory(){

        List<ParentCategory> parentCategoryList =
                parentCategory_service.get_parentCategory();
        Map<String,Object> map = new HashMap<>();
        map.put("parentCategory",parentCategoryList);
        return map;
    }
}
