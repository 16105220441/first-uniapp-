package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.ShoppingCartDetail;
import org.example.shoppingspring.mapper.ShoppingCartDetail_Mapper;
import org.example.shoppingspring.service.ShoppingCartDetail_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingCartDetail_ServiceImpl implements ShoppingCartDetail_Service {

    @Autowired
    ShoppingCartDetail_Mapper shoppingCartDetail_mapper;
    /**
     * @param productId
     * @param quantity
     */
    @Override
    public void addToCartDetail(int productId, int quantity,
                                Double itemTotalPrice, int shoppingCartId,
                                int customerId) {
        shoppingCartDetail_mapper.addToCartDetail(productId,quantity,
                itemTotalPrice, shoppingCartId,customerId);
    }

    /**
     * @param productId
     * @param customerId
     * @return
     */


    public ShoppingCartDetail isProductInCart(long productId,long customerId){
        return shoppingCartDetail_mapper.isProductInCart(productId,customerId);
    }

    /**
     * @param detail_id
     * @param quantity
     */
    @Override
    public void updateProductQuantity(long detail_id, int quantity,
                                      double itemTotalPrice) {
        shoppingCartDetail_mapper.updateProductQuantity(detail_id,quantity,itemTotalPrice);
    }



    @Override
    public  void update_totalQuantityAndTotalprice(long productId,
                                                  long customerId,long quantity,
                                                   double itemTotalPrice) {
        shoppingCartDetail_mapper.update_totalQuantityAndTotalprice(productId,
                customerId,quantity,itemTotalPrice);
    }

    /**
     * @param productId
     * @param customerId
     * @return
     */
    @Override
    public int delete_cartDetail(int productId, int customerId) {
       return shoppingCartDetail_mapper.delete_cartDetail(productId,
                customerId);
    }

    /**
     * @param customerId
     * @return
     */
    @Override
    public int get_cartProTotalNum(int customerId) {
        return shoppingCartDetail_mapper.get_cartProTotalNum(customerId);
    }
}
