package org.example.shoppingspring.service;


import org.example.shoppingspring.domain.ProductReviews;
import org.example.shoppingspring.domain.Products;

import java.util.List;

public interface ProductsService{



    List<Products> getProducts(int page, int travelPageSize);

    List<Products> getProID(Integer categoryId, String  productName, int page,
                            int travelPageSize,String orderType);

    Products getDetail(int productId);

    List<ProductReviews> getReview_byPorId(int productId, int page,
                                           int pageSize);

    Products getProInfo(int productId);

    void update_stockTotal(int quantity) ;
}
