package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Carousel {

  private long id;
  private String imageUrl;
  private String title;
  private String description;
  private CarouselImageClassification carouselImageClassification;




}
