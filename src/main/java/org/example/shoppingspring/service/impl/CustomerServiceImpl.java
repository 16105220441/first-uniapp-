package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.Customers;
import org.example.shoppingspring.mapper.CustomerMapper;
import org.example.shoppingspring.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerMapper customerMapper;
    /**
     * @param userId
     * @return
     */
    @Override
    public Customers getBasicInfo(String userId) {

        return customerMapper.getBasicInfo(userId);
    }
}
