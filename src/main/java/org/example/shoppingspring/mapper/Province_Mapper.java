package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.TlProvince;

import java.util.List;

@Mapper
public interface Province_Mapper {
    List<TlProvince> getList();

    int selectByProvinceName(@Param("provinceName") String provinceName);
}
