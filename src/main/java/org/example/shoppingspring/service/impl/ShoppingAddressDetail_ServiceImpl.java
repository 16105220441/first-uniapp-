package org.example.shoppingspring.service.impl;


import org.example.shoppingspring.domain.ShoppingAddressDetail;
import org.example.shoppingspring.mapper.ShoppingAddressDetail_Mapper;
import org.example.shoppingspring.service.ShoppingAddressDetail_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShoppingAddressDetail_ServiceImpl implements ShoppingAddressDetail_Service {
    @Autowired
    ShoppingAddressDetail_Mapper shoppingAddressDetail_mapper;

    /**
     * @param shoppingAddressDetail
     */
    @Override
    public void add_addressDetail(ShoppingAddressDetail shoppingAddressDetail) {
        shoppingAddressDetail_mapper.add_addressDetail(shoppingAddressDetail);

    }

    /**
     * @param addressDetailId
     * @return
     */
    @Override
    public ShoppingAddressDetail getInfo(int addressDetailId) {
        return shoppingAddressDetail_mapper.getInfo(addressDetailId);
    }

    /**
     * @param shoppingAddressDetail
     */
    @Override
    public void updateInfo(ShoppingAddressDetail shoppingAddressDetail) {
        shoppingAddressDetail_mapper.updateInfo(shoppingAddressDetail);
    }

    /**
     * @param addressDetailId
     */
    @Override
    public void delete(int addressDetailId) {
        shoppingAddressDetail_mapper.delete(addressDetailId);
    }

    /**
     * @param isDefault
     * @param customerId
     */
    @Override
    public ShoppingAddressDetail get_default(String isDefault, int customerId) {
        return shoppingAddressDetail_mapper.get_default(isDefault,customerId);
    }

    /**
     * @param shoppingAddressDetail
     */
    @Override
    public void update_default(ShoppingAddressDetail shoppingAddressDetail) {
        shoppingAddressDetail_mapper.update_default(shoppingAddressDetail);
    }

    /**
     * @param customerId
     * @return
     */

}
