package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetail {

  private long orderDetailId;
  private long customerId;
  private long productId;
  private long addressDetailId;
  private long shoppingCartId;
  private long shoppingCartDetailId;
  private ShoppingAddressDetail shoppingAddressDetail;
  private Products products;
  private java.sql.Timestamp date;
  private String status;

  private double itemTotalPrice;
  private long num;
  private String paymentMethod;


}
