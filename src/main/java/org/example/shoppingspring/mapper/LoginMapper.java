package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.Customers;

@Mapper
public interface LoginMapper {
    Customers login(@Param("customers") Customers customers);

    Customers findByPhone(@Param("phone") String phone);

    void refister(@Param("phone")String phone);
}
