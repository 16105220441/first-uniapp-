package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.ShoppingAddress;
import org.example.shoppingspring.domain.ShoppingAddressDetail;
import org.example.shoppingspring.mapper.ShoppingAddress_Mapper;
import org.example.shoppingspring.service.ShoppingAddress_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingAddress_ServiceImpl implements ShoppingAddress_Service {
    @Autowired
    ShoppingAddress_Mapper shoppingAddress_mapper;
    /**
     * @param customerId
     */
    @Override
    public void add(int customerId) {
        shoppingAddress_mapper.add(customerId);
    }

    /**
     * @param customerId
     * @return
     */
    @Override
    public ShoppingAddress getInfo(int customerId) {
        return shoppingAddress_mapper.getInfo(customerId);
    }

    /**
     * @param addressId
     * @return
     */
    @Override
    public List<ShoppingAddressDetail> getList(int customerId) {
        return shoppingAddress_mapper.getList(customerId);
    }

    /**
     * @param customerId
     */
    @Override
    public void update_isDefault(long customerId) {
        shoppingAddress_mapper.update_isDefault(customerId);
    }

}
