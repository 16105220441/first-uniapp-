package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.TlProvince;
import org.example.shoppingspring.service.ProductsService;
import org.example.shoppingspring.service.Province_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/province")
public class Province_Controller {

    final
    Province_Service productsService;

    public Province_Controller(Province_Service productsService) {
        this.productsService = productsService;
    }

    @GetMapping("/list")
    public Map<String,Object> get_provinceList(){
        List<TlProvince> provinceList = productsService.getList();
        Map<String,Object> map = new HashMap<>();
         map.put("data",provinceList);
        return map;
    }

    @GetMapping("/getProvinceId")
    public Map<String,Object> getProvinceId(@RequestParam String provinceName){
        int provinceId = productsService.selectByProvinceName(provinceName);
        Map<String,Object> map = new HashMap<>();
        map.put("provinceId",provinceId);
        return map;
    }

}
