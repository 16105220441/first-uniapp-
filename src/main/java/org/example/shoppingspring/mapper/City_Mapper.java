package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.TlCity;

import java.util.List;
@Mapper
public interface City_Mapper {
    List<TlCity> selectByProvinceId(@Param("provinceId") int provinceId);

    int selectByCityName(@Param("cityName") String cityName);
}
