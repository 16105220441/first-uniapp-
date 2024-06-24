package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.ShoppingAddress;
import org.example.shoppingspring.domain.ShoppingAddressDetail;

import java.util.List;

@Mapper
public interface ShoppingAddress_Mapper {
    void add(@Param("customerId") int customerId);

    ShoppingAddress getInfo(@Param("customerId") int customerId);

    List<ShoppingAddressDetail> getList(@Param("customerId") int customerId);

    void update_isDefault(@Param("customerId") long customerId);
}
