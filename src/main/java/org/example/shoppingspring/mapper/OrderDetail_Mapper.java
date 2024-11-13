package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.OrderDetail;

import java.util.List;

@Mapper
public interface OrderDetail_Mapper {
    void add_orderDetail(@Param("orderDetailList") List<OrderDetail> orderDetailList);

    void delete_orderDetail(@Param("orderDetailId") int orderDetailId);

    List<OrderDetail> get_orderDetailList(@Param("customerId") int customerId);
}
