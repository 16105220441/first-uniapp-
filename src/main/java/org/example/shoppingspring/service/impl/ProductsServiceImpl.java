package org.example.shoppingspring.service.impl;

import com.github.pagehelper.PageHelper;
import org.example.shoppingspring.domain.ProductReviews;
import org.example.shoppingspring.domain.Products;
import org.example.shoppingspring.mapper.ProductsMapper;
import org.example.shoppingspring.service.ProductsService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProductsServiceImpl implements ProductsService{

    private static final Logger log = LoggerFactory.getLogger(ProductsServiceImpl.class);
    @Autowired
    ProductsMapper productsMapper;


    @Override
    public List<Products> getProducts(int page, int travelPageSize) {

        PageHelper.startPage(page,travelPageSize);
        return productsMapper.getProducts();
    }

    /**
     * @param categoryId
     * @param page
     * @param travelPageSize
     * @return
     */
    @Override
    public List<Products> getProID(Integer categoryId, String  productName,
                                   int page,
                                   int travelPageSize,String orderType) {
        PageHelper.startPage(page,travelPageSize);
        return productsMapper.getProID(categoryId,productName,orderType);
    }

    /**
     * @param productId
     * @return
     */
    @Override
    public Products getDetail(int productId) {
        return productsMapper.getDetail(productId);
    }

    /**
     * @param pageSize
     * @param page
     * @param productId
     * @return
     */
    @Override
    public List<ProductReviews> getReview_byPorId(int productId, int page,
                                                  int pageSize) {
        PageHelper.startPage(page,pageSize);
        return productsMapper.getReview_byPorId(productId);
    }

    /**
     * @param productId
     * @return
     */
    @Override
    public Products getProInfo(int productId) {
        return productsMapper.getProInfo(productId);
    }

    /**
     * @param quantity
     */
    @Override
    public void update_stockTotal(int quantity) {
        productsMapper.update_stockTotal(quantity);
    }
}
