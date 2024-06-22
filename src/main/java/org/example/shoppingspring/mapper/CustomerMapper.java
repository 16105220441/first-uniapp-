package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.Customers;

@Mapper
public interface CustomerMapper {
    Customers getBasicInfo(@Param("id") String userId);
}
