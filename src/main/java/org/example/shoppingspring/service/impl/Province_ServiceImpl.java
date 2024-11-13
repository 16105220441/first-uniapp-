package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.TlProvince;
import org.example.shoppingspring.mapper.Province_Mapper;
import org.example.shoppingspring.service.Province_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Province_ServiceImpl implements Province_Service {

    @Autowired
    Province_Mapper provinceMapper;
    /**
     * @return  List<TlProvince>
     */
    @Override
    public List<TlProvince> getList() {
        return provinceMapper.getList();
    }

    /**
     * @param provinceName
     * @return int
     */
    @Override
    public int selectByProvinceName(String provinceName) {
        return provinceMapper.selectByProvinceName(provinceName);
    }
}
