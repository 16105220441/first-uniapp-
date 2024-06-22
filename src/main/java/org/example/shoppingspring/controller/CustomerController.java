package org.example.shoppingspring.controller;

import cn.hutool.core.map.MapUtil;
import org.example.shoppingspring.domain.Customers;
import org.example.shoppingspring.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    CustomerService customerService;
    @GetMapping("/getBasicInfo")
    public Map<String,Object> getBasicInfo(@RequestParam String userId){
        Customers customers = customerService.getBasicInfo(userId);
        Map<String,Object> map = new HashMap<>();
        map.put("info",customers);
        return map;
    }

}
