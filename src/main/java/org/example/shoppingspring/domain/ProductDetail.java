package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDetail {

  private long productDetailId;
  private String productCarousel;
  private long productId;


}
