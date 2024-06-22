package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShoppingAddress {

  private long id;
  private long customerId;
  private String recipient;
  private String province;
  private String city;
  private String district;
  private String detail;
  private long isDefault;


}
