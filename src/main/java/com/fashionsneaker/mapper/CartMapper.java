package com.fashionsneaker.mapper;

import com.fashionsneaker.model.CartModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

public class CartMapper implements RowMapper<CartModel> {

    @Override
    public CartModel mapRow(ResultSet resultSet) {
        try {
            CartModel cart = new CartModel();
            cart.setId(resultSet.getInt("id"));
            cart.setUser_id(resultSet.getInt("user_id"));
            return cart;
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public CartModel mapParam(HttpServletRequest request) {
        CartModel cart = new CartModel();
        Integer id = request.getParameter("id") == null ? null : Integer.valueOf(request.getParameter("id"));
        cart.setId(id);
        Integer user_id = Integer.valueOf(request.getParameter("user_id"));
        cart.setUser_id(user_id);
        return cart;
    }

}
