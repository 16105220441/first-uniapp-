package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.TlCity;
import org.example.shoppingspring.mapper.City_Mapper;
import org.example.shoppingspring.service.City_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class City_ServiceImpl implements City_Service {
    @Autowired
    City_Mapper cityMapper;
    /**
     * @param provinceId List<TlCity>
     * @return
     */
    @Override
    public List<TlCity> selectByProvinceId(int provinceId) {
        return cityMapper.selectByProvinceId(provinceId);
    }

    /**
     * @param cityName
     * @return int
     */
    @Override
    public int selectByCityName(String cityName) {
        return cityMapper.selectByCityName(cityName);
    }
}
