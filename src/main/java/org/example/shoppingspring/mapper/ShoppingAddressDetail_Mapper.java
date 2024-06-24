package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.ShoppingAddressDetail;

@Mapper
public interface ShoppingAddressDetail_Mapper {
    void add_addressDetail(@Param("addressDetail") ShoppingAddressDetail shoppingAddressDetail);

    ShoppingAddressDetail getInfo(@Param("addressDetailId") int addressDetailId);

    void updateInfo(@Param("shoppingAddressDetail") ShoppingAddressDetail shoppingAddressDetail);

    void delete(@Param("addressDetailId") int addressDetailId);

    ShoppingAddressDetail get_default(@Param("isDefault") String isDefault,
                                      @Param("customerId") int customerId);

    void update_default(@Param("shoppingAddressDetail") ShoppingAddressDetail shoppingAddressDetail);
}
