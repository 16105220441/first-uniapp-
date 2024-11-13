package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.Customers;

public interface LoginService {
    Customers login(Customers customers);

    Customers findByPhone(String phone);

    void register(String phone,String nickName);
}
