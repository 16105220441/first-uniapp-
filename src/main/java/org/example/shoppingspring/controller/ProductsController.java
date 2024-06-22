package org.example.shoppingspring.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.ProductReviews;
import org.example.shoppingspring.domain.Products;
import org.example.shoppingspring.domain.Reviews;
import org.example.shoppingspring.service.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/products")
public class ProductsController {
    @Autowired
    ProductsService productsService;

    @GetMapping("/recommend")
    public Map<String, Object> getProducts(@RequestParam(defaultValue =
            "1") int page,
                                           @RequestParam(defaultValue = "5") int travelPageSize) {

        List<Products> productsList = productsService.getProducts(page, travelPageSize);
        PageInfo<Products> pageInfo = new PageInfo<>(productsList);

        Map<String, Object> map = new HashMap<>();
        map.put("productsData", pageInfo);
        return map;
    }

    @GetMapping("/by_Category/id&&name")
    public Map<String,Object> getPro(@RequestParam(name = "categoryId",
            required = false) String categoryId,
                                       @RequestParam(name = "goodsName",required = false) String productName,
                                       @RequestParam(defaultValue =
            "1") int page,
                                       @RequestParam(defaultValue = "5") int travelPageSize){
        List<Products> productsList = productsService.getProID(categoryId,
                productName,
                page,travelPageSize);
        PageInfo<Products> pageInfo = new PageInfo<>(productsList);
        Map<String, Object> map = new HashMap<>();
        map.put("productsData", pageInfo);
        return map;
    }


    @GetMapping("/detail")
    public Map<String,Object> getDetail(@RequestParam int productId){
        Products products = productsService.getDetail(productId);
        Map<String,Object> map = new HashMap<>();
        map.put("productData",products);
        return map;
    }

    @GetMapping("/productDetail/reviewList")
    public Map<String,Object> getProReview(@RequestParam int productId,
                                           @RequestParam (defaultValue =
                                                   "1") int page,
                                           @RequestParam(defaultValue = "3") int pageSize)  {
        List<ProductReviews> reviews =
                productsService.getReview_byPorId(productId,page,pageSize);
        PageInfo<ProductReviews> pageInfo = new PageInfo<>(reviews);
        Map<String,Object> map = new HashMap<>();
        map.put("proReviews",pageInfo);
        return map;
    }
}
