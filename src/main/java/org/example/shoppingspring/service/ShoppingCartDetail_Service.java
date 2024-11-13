package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.ShoppingCartDetail;

public interface ShoppingCartDetail_Service {
    void addToCartDetail(int productId,int quantity,Double itemTotalPrice,
                         int shoppingCartId,int customerId);

    ShoppingCartDetail isProductInCart(long productId,long customerId);

    void updateProductQuantity(long detail_id,int quantity,double itemTotalPrice );

    void update_totalQuantityAndTotalprice(long productId,
                                           long customerId,
                                           long quantity, double itemTotalPrice);

    int delete_cartDetail(int productId, int customerId);

    int get_cartProTotalNum(int customerId);
}
