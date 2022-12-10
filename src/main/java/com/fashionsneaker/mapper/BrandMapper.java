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
    public BrandModel mapParam(HttpServletRequest hsr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
