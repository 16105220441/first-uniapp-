package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.Category;
import org.example.shoppingspring.mapper.Category_Mapper;
import org.example.shoppingspring.service.Category_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Category_ServiceImpl implements Category_Service {
    @Autowired
    Category_Mapper category_mapper;
    /**
     * @return
     */
    @Override
    public List<Category> get_category(int parent_category_id) {
        return category_mapper.get_category(parent_category_id);
    }
}
