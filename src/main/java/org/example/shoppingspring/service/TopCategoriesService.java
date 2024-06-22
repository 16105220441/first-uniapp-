package org.example.shoppingspring.service;


import org.example.shoppingspring.domain.TopCategories;
import org.springframework.stereotype.Service;

import java.util.List;


public interface TopCategoriesService {

    List<TopCategories> get_topCategorise();
}
