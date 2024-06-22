package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Products {

  private long productId;
  private String name;
  private String description;
  private String productImage;
  private double originalPrice;
  private double discountPrice;
  private long productSales;
  private long categoryId;
  private String content;
  private List<ProductDetail> productDetail;
  private ProductReviews productReviews;
  private int stockTotal;
}
