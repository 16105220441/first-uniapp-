package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.ParentCategory;

import java.util.List;

@Mapper
public interface ParentCategory_Mapper {
    List<ParentCategory> get_parentCategory();
}
