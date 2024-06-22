package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.example.shoppingspring.domain.Category;

import java.util.List;
@Mapper
public interface Category_Mapper {
    List<Category> get_category(@Param("parent_category_id") int parent_category_id);
}
