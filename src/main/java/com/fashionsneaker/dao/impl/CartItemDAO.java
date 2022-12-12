package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.ICartItemDAO;
import com.fashionsneaker.mapper.CartItemMapper;
import com.fashionsneaker.model.CartItemModel;
import java.util.List;

public class CartItemDAO extends AbstractDAO<CartItemModel> implements ICartItemDAO {

    @Override
    public CartItemModel findById(int id) {
        String sql = "SELECT * FROM cart_item WHERE id = ?";
        List<CartItemModel> cartItems = query(sql, new CartItemMapper(), id);
        return cartItems.isEmpty() ? null : cartItems.get(0);
    }

    @Override
    public CartItemModel findByCartIdAndProductId(int cart_id, int product_id) {
        String sql = "SELECT * FROM cart_item WHERE cart_id = ? AND product_id = ?";
        List<CartItemModel> cartItems = query(sql, new CartItemMapper(), cart_id, product_id);
        return cartItems.isEmpty() ? null : cartItems.get(0);
    }

    @Override
    public int save(CartItemModel cartItem) {
        String sql = "INSERT INTO cart_item VALUES(?, ?, ?)";
        return insert(sql, cartItem.getProduct_id(),
                cartItem.getCart_id(),
                cartItem.getItem_quantity());
    }

    @Override
    public void update(CartItemModel cartItem) {
        String sql = "UPDATE cart_item SET item_quantity = ? WHERE cart_id = ? AND product_id = ?";
        update(sql, cartItem.getItem_quantity(),
                cartItem.getCart_id(),
                cartItem.getProduct_id());
    }

    @Override
    public int checkExistCartItem(int product_id, int cart_id) {
        String sql = "SELECT count(*) FROM cart_item WHERE product_id = ? AND cart_id = ?";
        return count(sql, product_id, cart_id);
    }

}
