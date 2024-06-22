package org.example.shoppingspring.service.impl;

import org.example.shoppingspring.domain.TopCategories;
import org.example.shoppingspring.mapper.TopCategoriesMapper;
import org.example.shoppingspring.service.TopCategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TopCategoriesServiceImpl implements TopCategoriesService {
    @Autowired
    TopCategoriesMapper topCategoriesMapper;

    /**
     * @return
     */
    @Override
    public List<TopCategories> get_topCategorise() {
        return topCategoriesMapper.get_topCategories();
    }
}
