package org.example.shoppingspring.controller;

import org.example.shoppingspring.domain.ShoppingAddress;
import org.example.shoppingspring.domain.ShoppingAddressDetail;
import org.example.shoppingspring.service.ShoppingAddressDetail_Service;
import org.example.shoppingspring.service.ShoppingAddress_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/address/detail")
public class ShoppingAddressDetail_Controller {

    @Autowired
    ShoppingAddressDetail_Service shoppingAddressDetail_service;

    @Autowired
    ShoppingAddress_Service shoppingAddress_service;

    @PostMapping("/add")
    public void add_addressDetail(@RequestBody ShoppingAddressDetail shoppingAddressDetail){
        ShoppingAddress shoppingAddress =
                shoppingAddress_service.getInfo((int) shoppingAddressDetail.getCustomerId());
        if(shoppingAddress == null){
            shoppingAddress_service.add((int) shoppingAddressDetail.getCustomerId());
        }
        shoppingAddress =    shoppingAddress_service.getInfo((int) shoppingAddressDetail.getCustomerId());
        shoppingAddressDetail.setAddressId(shoppingAddress.getAddressId());
        shoppingAddressDetail_service.add_addressDetail(shoppingAddressDetail);
        if(shoppingAddressDetail.getIsDefault().equals("true")){
            shoppingAddress_service.update_isDefault(shoppingAddressDetail.getCustomerId());
        }
    }

    @GetMapping("/getInfo")
    public Map<String,Object> getInfo(@RequestParam int addressDetailId){
        ShoppingAddressDetail shoppingAddressDetail =
                shoppingAddressDetail_service.getInfo(addressDetailId);
        Map<String,Object> map = new HashMap<>();
        map.put("addressDetail",shoppingAddressDetail);
        return map;
    }

    @PutMapping("/update")
    public void updateInfo(@RequestBody ShoppingAddressDetail shoppingAddressDetail){
        shoppingAddressDetail_service.updateInfo(shoppingAddressDetail);
    }

    @DeleteMapping("/delete")
    public void delete(@RequestParam int address_detail_id){
        shoppingAddressDetail_service.delete(address_detail_id);
    }

    @GetMapping("/default")
    public Map<String,Object> get_default(@RequestParam String isDefault,
                                          @RequestParam int customerId){
      ShoppingAddressDetail shoppingAddressDetail =
              shoppingAddressDetail_service.get_default(isDefault,customerId);
      Map<String,Object> map = new HashMap<>();
      map.put("defaultAddress",shoppingAddressDetail);
      return map;
    }

    @PutMapping("/update/default")
    public void update_default(@RequestBody ShoppingAddressDetail shoppingAddressDetail){
        shoppingAddressDetail_service.update_default(shoppingAddressDetail);
    }


}
