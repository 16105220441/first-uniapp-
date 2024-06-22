package org.example.shoppingspring.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class TopCategories {

  private long id;
  private String imageUrl;
  private String text;

}
