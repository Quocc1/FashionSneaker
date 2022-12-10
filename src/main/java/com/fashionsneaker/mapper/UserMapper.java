package com.fashionsneaker.mapper;

import com.fashionsneaker.model.UserModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

public class UserMapper implements RowMapper<UserModel> {

    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel user = new UserModel();
            user.setId(resultSet.getInt("id"));
            user.setEmail(resultSet.getString("email"));
            user.setFull_name(resultSet.getString("full_name"));
            user.setPhone_number(resultSet.getString("phone_number"));
            user.setPassword(resultSet.getString("password"));
            user.setIsAdmin(resultSet.getBoolean("isAdmin"));
            return user;
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public UserModel mapParam(HttpServletRequest hsr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
