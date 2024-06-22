package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.Customers;
import org.example.shoppingspring.mapper.LoginMapper;
import org.example.shoppingspring.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
    final
    LoginMapper loginMapper;

    public LoginServiceImpl(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
    }

    /**
     * @param customers
     * @return
     */
    @Override
    public Customers login(Customers customers) {
       return this.loginMapper.login(customers);
    }

    /**
     * @param phone
     * @return
     */
    @Override
    public Customers findByPhone(String phone) {
        return this.loginMapper.findByPhone(phone);
    }

    /**
     * @param phone
     */
    @Override
    public void register(String phone) {
        this.loginMapper.refister(phone);
    }
}
