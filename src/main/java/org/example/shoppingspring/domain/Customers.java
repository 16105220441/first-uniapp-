package org.example.shoppingspring.domain;


import lombok.*;

import java.sql.Date;


@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
public class Customers {

  private long customerId;
  private String pickName;
  private String phone;
  private String password;
  private Date createTime;
  private String status;
  private String avatar;



}
