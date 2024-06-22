package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.ShoppingCart;
import org.example.shoppingspring.domain.ShoppingCartDetail;
import org.example.shoppingspring.service.ShoppingCart_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/cart")
public class ShoppingCart_Controller {

    @Autowired
    ShoppingCart_Service shoppingCart_service;

    @GetMapping("/total")
    public Map<String,Object> get_totalQuantity(@RequestParam int customerId){
        ShoppingCart shoppingCart =
                shoppingCart_service.get_byCustomerId(customerId);
        Map<String,Object> map = new HashMap<>();
        map.put("total",shoppingCart.getTotalQuantity());
        return map;
    }

    @GetMapping("/list")
    public Map<String,Object> get_cartList(@RequestParam int customerId){
        ShoppingCart shoppingCart =
                shoppingCart_service.get_cartList(customerId);
        Map<String,Object> map = new HashMap<>();
        map.put("cartList",shoppingCart);
        return map;
    }



}
