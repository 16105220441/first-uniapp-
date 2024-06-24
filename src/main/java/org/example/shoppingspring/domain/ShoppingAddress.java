package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShoppingAddress {

  private long addressId;
  private long customerId;
private List<ShoppingAddressDetail> shoppingAddressDetails;
}
