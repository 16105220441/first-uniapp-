package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.TlProvince;

import java.util.List;

public interface Province_Service {
    List<TlProvince> getList();

    int selectByProvinceName(String provinceName);
}
