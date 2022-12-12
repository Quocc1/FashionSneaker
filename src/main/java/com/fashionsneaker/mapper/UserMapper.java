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
            user.setAddress(resultSet.getString("address"));
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
    public UserModel mapParam(HttpServletRequest request) {
        UserModel user = new UserModel();
        Integer id = Integer.valueOf(request.getParameter("id"));
        user.setId(id);
        String email = request.getParameter("email");
        user.setEmail(email);
        String address = request.getParameter("address");
        user.setAddress(address);
        String full_name = request.getParameter("full_name");
        user.setFull_name(full_name);
        String phone_number = request.getParameter("phone_number");
        user.setPhone_number(phone_number);
        String password = request.getParameter("password");
        user.setPassword(password);
        return user;
    }

}
