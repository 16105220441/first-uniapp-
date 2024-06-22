package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.Customers;

public interface CustomerService {
    Customers getBasicInfo(String userId);
}
