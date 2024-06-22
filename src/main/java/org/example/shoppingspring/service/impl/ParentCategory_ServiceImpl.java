package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.ParentCategory;
import org.example.shoppingspring.mapper.ParentCategory_Mapper;
import org.example.shoppingspring.service.ParentCategory_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ParentCategory_ServiceImpl implements ParentCategory_Service {
    @Autowired
    ParentCategory_Mapper parentCategory_mapper;
    /**
     * @return
     */
    @Override
    public List<ParentCategory> get_parentCategory() {
        return parentCategory_mapper.get_parentCategory();
    }
}
