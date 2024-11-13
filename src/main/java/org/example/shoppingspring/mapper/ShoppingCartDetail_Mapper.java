package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.ShoppingCartDetail;

@Mapper
public interface ShoppingCartDetail_Mapper {


    void addToCartDetail(@Param("productId") int productId,
                   @Param("quantity") int  quantity,
                         @Param("itemTotalPrice") Double itemTotalPrice,
                         @Param("shoppingCartId") int shoppingCartId,@Param(
                                 "customerId") int customerId);

    ShoppingCartDetail isProductInCart(@Param("productId") long productId,
                                       @Param("customerId") long customerId);

    void updateProductQuantity(@Param("detailId") long detailId,
                               @Param("quantity") int quantity,@Param(
                                       "itemTotalPrice") double itemTotalPrice);

    void update_totalQuantityAndTotalprice(@Param("productId") long productId,
                                           @Param("customerId")
                                           long customerId,
                                           @Param("quantity") long quantity,
                                           @Param("itemTotalPrice")double itemTotalPrice);

    int delete_cartDetail(@Param("productId") int productId, @Param(
            "customerId") int customerId);

    int get_cartProTotalNum(int customerId);
}
