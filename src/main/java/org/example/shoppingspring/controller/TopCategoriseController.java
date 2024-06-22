package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.TopCategories;
import org.example.shoppingspring.service.TopCategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/topCategorise")
public class TopCategoriseController {
    @Autowired
    TopCategoriesService topCategoriesService;

    @GetMapping
    public Map<String,Object> get_topCategorise(){
       List<TopCategories> topCategoriesList =
               topCategoriesService.get_topCategorise();
       Map<String,Object> map = new HashMap<>();
       map.put("topCategorise",topCategoriesList);
       return map;
    }
}
