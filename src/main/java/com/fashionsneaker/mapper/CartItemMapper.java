package com.fashionsneaker.mapper;

import com.fashionsneaker.model.CartItemModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

public class CartItemMapper implements RowMapper<CartItemModel> {

    @Override
    public CartItemModel mapRow(ResultSet resultSet) {
        try {
            CartItemModel cartItem = new CartItemModel();
            cartItem.setId(resultSet.getInt("id"));
            cartItem.setProduct_id(resultSet.getInt("product_id"));
            cartItem.setCart_id(resultSet.getInt("cart_id"));
            cartItem.setItem_quantity(resultSet.getInt("item_quantity"));
            return cartItem;
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public CartItemModel mapParam(HttpServletRequest request) {
        CartItemModel cart = new CartItemModel();
        Integer id = request.getParameter("id") == null ? null : Integer.valueOf(request.getParameter("id"));
        cart.setId(id);
        Integer product_id = request.getParameter("product_id") == null ? null : Integer.valueOf(request.getParameter("product_id"));
        cart.setProduct_id(product_id);
        Integer cart_id = request.getParameter("cart_id") == null ? null : Integer.valueOf(request.getParameter("cart_id"));
        cart.setCart_id(cart_id);
        Integer item_quantity = request.getParameter("item_quantity") == null ? null : Integer.valueOf(request.getParameter("item_quantity"));
        cart.setItem_quantity(item_quantity);
        return cart;
    }

}
