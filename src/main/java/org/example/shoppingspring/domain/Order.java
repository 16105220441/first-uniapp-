package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * (Order)实体类
 *
 * @author makejava
 * @since 2024-11-02 19:46:34
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order implements Serializable {
/**
     * 订单id
     */
    private Integer orderId;
/**
     * 一单订单中的子订单id
     */
    private Integer oderDetailId;
/**
     * 用户id
     */
    private Integer customerId;


}

