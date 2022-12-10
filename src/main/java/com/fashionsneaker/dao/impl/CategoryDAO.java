package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.ICategoryDAO;
import com.fashionsneaker.mapper.CategoryMapper;
import com.fashionsneaker.model.CategoryModel;
import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

    @Override
    public List<CategoryModel> findAll() {
        String sql = "SELECT * FROM category";
        return query(sql, new CategoryMapper());
    }
}
