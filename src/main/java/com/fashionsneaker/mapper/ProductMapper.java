package com.fashionsneaker.mapper;

import com.fashionsneaker.model.ProductModel;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<ProductModel> {

    @Override
    public ProductModel mapRow(ResultSet resultSet) {
        try {
            ResultSetMetaData rsmd = resultSet.getMetaData();
            ProductModel product = new ProductModel();
            product.setId(resultSet.getInt("id"));
            product.setCategory_id(resultSet.getInt("category_id"));
            if (rsmd.getColumnCount() > 11) {
                product.setCategory_name(resultSet.getString("category_name"));
                product.setBrand_name(resultSet.getString("brand_name"));
            }
            product.setBrand_id(resultSet.getInt("brand_id"));
            product.setProduct_name(resultSet.getString("product_name"));
            product.setDescription(resultSet.getString("description"));
            product.setPrice(resultSet.getInt("price"));
            product.setSize(resultSet.getString("size"));
            product.setQuantity(resultSet.getInt("quantity"));
            product.setImg_url(resultSet.getString("img_url"));
            return product;
        } catch (SQLException e) {
            return null;
        }
    }

}
