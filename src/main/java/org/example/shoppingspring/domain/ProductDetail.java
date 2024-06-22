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

 /* @Override
  public String toString() {
    StringBuilder stringBuilder = new StringBuilder("ProductDetail{");
    if (customerId != 0) {
      stringBuilder.append("customerId=").append(customerId).append(",");
    }
    if (productCarousel != null) {
      stringBuilder.append("productCarousel='").append(productCarousel).append("',");
    }
    if (productId != 0) {
      stringBuilder.append("productId=").append(productId);
    }
    if (stringBuilder.charAt(stringBuilder.length() - 2) == ',') {
      stringBuilder.deleteCharAt(stringBuilder.length() - 2);
    }
    stringBuilder.append("}");
    return stringBuilder.toString();
  }*/
}
