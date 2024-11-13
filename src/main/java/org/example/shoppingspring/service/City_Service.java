package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.TlCity;

import java.util.List;

public interface City_Service {
    List<TlCity> selectByProvinceId(int provinceId);

    int selectByCityName(String cityName);
}
