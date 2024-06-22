package org.example.shoppingspring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductReviews {

    private long id;
    private String review;
    private String satisfaction;
    private long customersId;
    private long productId;
    private Customers customers;
    public Date createTime;
    public String toString() {
        StringBuilder sb = new StringBuilder("ProductDetail{");
        if (id != 0) {
            sb.append("customerId=").append(id).append(",");
        }

        if (productId != 0) {
            sb.append("productId=").append(productId).append(", ");
        }
        if (review != null) {
            sb.append("review='").append(review).append("', ");
        }
        if (satisfaction != null) {
            sb.append("satisfaction='").append(satisfaction).append("', ");
        }
        if (customers != null) {
            sb.append("customers").append(customers).append("', ");
        }
        if (createTime != null) {
            sb.append("customers").append(customers).append(", ");
        }
        // 移除尾部可能的逗号
        if (sb.charAt(sb.length() - 2) == ',') {
            sb.deleteCharAt(sb.length() - 2);
        }
        sb.append('}');
        return sb.toString();
    }


}
