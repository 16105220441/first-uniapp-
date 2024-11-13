package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.OrderDetail;

import java.util.List;

public interface OrderDetail_Service {
    void add_orderDetail(List<OrderDetail> orderDetailList);

    void delete_orderDetail(int orderDetailId);

    List<OrderDetail> get_orderDetailList(int customerId, int pageNum, int pageSize);
}
