package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {

  private long orderId;
  private java.sql.Timestamp date;
  private long customerId;
  private double totalPrice;
  private List<OrderDetail> orderDetails;
}
