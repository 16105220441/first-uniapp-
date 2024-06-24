package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.ShoppingAddress;
import org.example.shoppingspring.domain.ShoppingAddressDetail;

import java.util.List;

public interface ShoppingAddress_Service {

    void add(int customerId);

    ShoppingAddress getInfo(int customerId);

    List<ShoppingAddressDetail> getList(int customerId);


    void update_isDefault(long customerId);
}
