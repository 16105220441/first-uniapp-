package org.example.shoppingspring.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.example.shoppingspring.domain.TopCategories;

import java.util.List;

@Mapper
public interface TopCategoriesMapper {


    List<TopCategories> get_topCategories();
}
