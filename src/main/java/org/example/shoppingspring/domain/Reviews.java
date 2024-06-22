package org.example.shoppingspring.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reviews {

  private long id;
  private long customerId;
  private long productId;
  private long rating;
  private String content;
  private Date date;



}
