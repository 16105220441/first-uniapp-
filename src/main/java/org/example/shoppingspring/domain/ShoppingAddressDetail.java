package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShoppingAddressDetail {

  private long addressDetailId;
  private long customerId;
  private String name;
  private String province;
  private String city;
  private String county;
  private String addressDetail;
  private String isDefault;
  private long tel;
  private long addressId;


}
