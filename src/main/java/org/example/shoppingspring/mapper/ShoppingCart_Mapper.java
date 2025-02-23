package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.ShoppingCart;

import java.util.List;

@Mapper
public interface ShoppingCart_Mapper {
    void addCart(@Param("customerId") int customerId);

    ShoppingCart get_byCustomerId(@Param("customerId") long customerId);

    void update_info(@Param("shoppingCartId") long shoppingCartId,
                           @Param("totalPrice") double totalPrice,
                           @Param("quantity") long quantity);

    List<ShoppingCart> get_cartList(@Param("customerId") String  customerId,
                                    @Param("detailId") String detailId);


    int get_cartProTotalNum(@Param("customerId") int customerId);
}
