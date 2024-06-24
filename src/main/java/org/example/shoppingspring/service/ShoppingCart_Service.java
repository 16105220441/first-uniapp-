package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.ShoppingCart;

public interface ShoppingCart_Service {

    void addCart(int customerId);

    ShoppingCart get_byCustomerId(long customerId);

    void update_info(long shoppingCartId, double totalPrice,
                             long quantity);

    ShoppingCart get_cartList(String  customerId,String detailId);



}
