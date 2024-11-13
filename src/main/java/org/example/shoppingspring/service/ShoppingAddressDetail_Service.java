package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.ShoppingAddressDetail;

public interface ShoppingAddressDetail_Service {
    void add_addressDetail(ShoppingAddressDetail shoppingAddressDetail);

    ShoppingAddressDetail getInfo(int addressDetailId);

    void updateInfo(ShoppingAddressDetail shoppingAddressDetail);

    void delete(int addressDetailId);

    ShoppingAddressDetail get_default(String isDefault, int customerId);

    void update_default(ShoppingAddressDetail shoppingAddressDetail);


}
