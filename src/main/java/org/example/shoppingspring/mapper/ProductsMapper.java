package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.ProductReviews;
import org.example.shoppingspring.domain.Products;
import org.example.shoppingspring.domain.Reviews;

import java.util.List;

@Mapper
public interface ProductsMapper {


    List<Products> getProducts();

    List<Products> getProID(@Param("categoryId") String categoryId, @Param("productName") String productName);

    Products getDetail(@Param("id") int productId);

    List<ProductReviews> getReview_byPorId(@Param("productId") int productId);

    Products getProInfo(@Param("productId") int productId);

    void update_stockTotal(@Param("quantity") int quantity);
}
