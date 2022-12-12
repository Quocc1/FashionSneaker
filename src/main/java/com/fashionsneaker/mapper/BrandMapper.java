package com.fashionsneaker.mapper;

import com.fashionsneaker.model.BrandModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

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

    @Override
    public BrandModel mapParam(HttpServletRequest request) {
        BrandModel brand = new BrandModel();
        Integer id = Integer.valueOf(request.getParameter("id"));
        brand.setId(id);
        String brand_name = request.getParameter("brand_name");
        brand.setBrand_name(brand_name);
        return brand;
    }

}
