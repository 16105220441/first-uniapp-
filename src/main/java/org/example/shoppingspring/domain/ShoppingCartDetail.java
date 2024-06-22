package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ShoppingCartDetail {
  private long detailId;
  private long shoppingCartId;
  private long productId;
  private long quantity;
  private java.sql.Timestamp createTime;
  private java.sql.Timestamp updateTime;
  private double itemTotalPrice;
  private Products products;
  private long customerId;

}
