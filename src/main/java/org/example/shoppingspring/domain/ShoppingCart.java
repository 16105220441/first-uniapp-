package org.example.shoppingspring.domain;

import com.fasterxml.jackson.annotation.JsonFilter;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ShoppingCart {
    private int id;
    private long customersId;
    private double totalPrice;
    private long totalQuantity;

    private List<ShoppingCartDetail> shoppingCartDetails;


}
