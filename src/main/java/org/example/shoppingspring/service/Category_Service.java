package org.example.shoppingspring.service;

import org.example.shoppingspring.domain.Category;

import java.util.List;

public interface Category_Service {
    List<Category> get_category(int parent_category_id);
}
