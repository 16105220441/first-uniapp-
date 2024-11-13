package org.example.shoppingspring.controller;

import com.github.pagehelper.PageInfo;
import org.example.shoppingspring.domain.OrderDetail;
import org.example.shoppingspring.service.OrderDetail_Service;
import org.example.shoppingspring.service.ShoppingCartDetail_Service;
import org.example.shoppingspring.service.ShoppingCart_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/orderDetail")
public class OrderDetail_Controller {
    @Autowired
    OrderDetail_Service orderDetail_service;

    @Autowired
    ShoppingCart_Service shoppingCart_service;

    @Autowired
    ShoppingCartDetail_Service shoppingCartDetail_service;

    @PostMapping("/add")
    public void add_orderDetail(@RequestBody List<OrderDetail> orderDetails){



            orderDetail_service.add_orderDetail(orderDetails);

    }
    @DeleteMapping("/delete")
    public void delete_orderDetail(@RequestParam int orderDetailId){
        orderDetail_service.delete_orderDetail(orderDetailId);
    }
    @GetMapping("/get/list")
    public Map<String,Object> get_orderDetailList(@RequestParam int customerId,
                                   @RequestParam(defaultValue = "1") int pageNum, @RequestParam(defaultValue = "5") int pageSize){

         List<OrderDetail> orderDetailList =  orderDetail_service.get_orderDetailList(customerId,pageNum,pageSize);
        PageInfo<OrderDetail> pageInfo = new PageInfo<>(orderDetailList);
        Map<String,Object> map = new HashMap<>();
        map.put("orderDetailList",pageInfo);
        return map;
    }
}
