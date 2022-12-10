package com.fashionsneaker.mapper;

import com.fashionsneaker.model.BrandModel;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BrandMapper implements RowMapper<BrandModel> {

    @Override
    public BrandModel mapRow(ResultSet resultSet) {
        try {
            BrandModel brand = new BrandModel();
            brand.setId(resultSet.getInt("id"));
            brand.setBrand_name(resultSet.getString("brand_name"));
            return brand;
        } catch (SQLException e) {
            return null;
        }
    }

}
