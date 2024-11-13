package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.TlCity;
import org.example.shoppingspring.domain.TlDistrict;
import org.example.shoppingspring.mapper.District_Mapper;
import org.example.shoppingspring.service.District_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class District_ServiceImpl implements District_Service {
    @Autowired
    District_Mapper districtMapper;
    /**
     * @param cityId
     * @return List<TlCity>
     */
    @Override
    public List<TlDistrict> selectByCityId(int cityId) {
        return districtMapper.selectByCityId(cityId);
    }
}
