package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.ShoppingCart;

import java.util.List;

public interface ShoppingCart_Service {

    void addCart(int customerId);

    ShoppingCart get_byCustomerId(long customerId);

    void update_info(long shoppingCartId, double totalPrice,
                             long quantity);

    List<ShoppingCart> get_cartList(String  customerId, String detailId,
                                    int pageNum, int  pageSize);

    List<ShoppingCart> get_cartList(String  customerId,String detailId);


    int get_cartProTotalNum(int customerId);
}
