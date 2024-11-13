package org.example.shoppingspring.service.impl;

import com.github.pagehelper.PageHelper;
import org.example.shoppingspring.domain.OrderDetail;
import org.example.shoppingspring.mapper.OrderDetail_Mapper;
import org.example.shoppingspring.service.OrderDetail_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderDetail_ServiceImpl implements OrderDetail_Service {
    @Autowired
    OrderDetail_Mapper orderDetail_mapper;
    /**
     * @param orderDetail
     */
    @Override
    public void add_orderDetail(List<OrderDetail> orderDetailList) {
        orderDetail_mapper.add_orderDetail(orderDetailList);
    }

    /**
     * @param orderDetailId
     */
    @Override
    public void delete_orderDetail(int orderDetailId) {
        orderDetail_mapper.delete_orderDetail(orderDetailId);
    }

    /**
     * @param customerId
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public List<OrderDetail> get_orderDetailList(int customerId, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        return orderDetail_mapper.get_orderDetailList(customerId);
    }
}
