package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.TlCity;
import org.example.shoppingspring.domain.TlDistrict;

import java.util.List;

public interface District_Service {
    List<TlDistrict> selectByCityId(int cityId);
}
