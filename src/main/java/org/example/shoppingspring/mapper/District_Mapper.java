package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.TlCity;
import org.example.shoppingspring.domain.TlDistrict;

import java.util.List;

@Mapper
public interface District_Mapper {
    List<TlDistrict> selectByCityId(@Param("cityId") int cityId);
}
