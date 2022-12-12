package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.ICartDAO;
import com.fashionsneaker.dao.IProductDAO;
import com.fashionsneaker.mapper.CartMapper;
import com.fashionsneaker.mapper.CartItemMapper;
import com.fashionsneaker.model.CartItemModel;
import com.fashionsneaker.model.CartModel;
import java.util.List;
import javax.inject.Inject;

public class CartDAO extends AbstractDAO<CartModel> implements ICartDAO {

    @Inject
    private IProductDAO ProductDAO; 
    
    @Override
    public CartModel findById(int id) {
        String sql = "SELECT * FROM cart WHERE id = ?";
        List<CartModel> carts = query(sql, new CartMapper(), id);
        return carts.isEmpty() ? null : carts.get(0);
    }

    @Override
    public int save(int user_id) {
        String sql = "INSERT INTO cart VALUES(?)";
        return insert(sql, user_id);
    }

    @Override
    public List<CartItemModel> getAllCartItem(int id) {
        String sql = "SELECT * FROM cart_item WHERE cart_id = ?";
        List<CartItemModel> cartItems = query(sql, new CartItemMapper(), id);
        for (CartItemModel item : cartItems) {   
            item.setItem(ProductDAO.findById(item.getProduct_id()));
        }
        return cartItems;
    }
}
