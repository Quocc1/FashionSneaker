package com.fashionsneaker.mapper;

import com.fashionsneaker.model.CategoryModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<CategoryModel> {

    @Override
    public CategoryModel mapRow(ResultSet resultSet) {
        try {
            CategoryModel category = new CategoryModel();
            category.setId(resultSet.getInt("id"));
            category.setCategory_name(resultSet.getString("category_name"));
            return category;
        } catch (SQLException e) {
            return null;
        }
    }

}
