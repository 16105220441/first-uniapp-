package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.ShoppingCart;
import org.example.shoppingspring.mapper.ShoppingCart_Mapper;
import org.example.shoppingspring.service.ShoppingCartDetail_Service;
import org.example.shoppingspring.service.ShoppingCart_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingCart_ServiceImpl implements ShoppingCart_Service {
    @Autowired
    ShoppingCart_Mapper shoppingCart_mapper;
    /**
     * @param customerId
     */
    @Override
    public void addCart(int customerId) {
        shoppingCart_mapper.addCart(customerId);
    }

    /**
     * @param customerId
     * @return
     */
    @Override
    public ShoppingCart get_byCustomerId(long customerId) {
        return shoppingCart_mapper.get_byCustomerId(customerId);
    }


    @Override
    public void update_info(long shoppingCartId, double totalPrice,
                                  long quantity) {
          shoppingCart_mapper.update_info(shoppingCartId,totalPrice,
                quantity);
    }

    /**
     * @param customerId
     * @return
     */
    @Override
    public ShoppingCart get_cartList(int customerId) {
        return shoppingCart_mapper.get_cartList(customerId);
    }




}
