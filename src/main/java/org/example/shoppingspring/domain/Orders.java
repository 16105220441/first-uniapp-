package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {

  private long id;
  private java.sql.Timestamp date;
  private long customerId;
  private String status;
  private long productId;

}
