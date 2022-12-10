package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.ICategoryDAO;
import com.fashionsneaker.model.CategoryModel;
import com.fashionsneaker.service.ICategoryService;
import java.util.List;
import javax.inject.Inject;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDAO;

    @Override
    public List<CategoryModel> findAll() {
        return categoryDAO.findAll();
    }

}
