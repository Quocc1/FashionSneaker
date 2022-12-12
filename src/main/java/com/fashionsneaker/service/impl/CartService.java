package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.ICartDAO;
import com.fashionsneaker.model.CartItemModel;
import com.fashionsneaker.model.CartModel;
import com.fashionsneaker.service.ICartService;
import java.util.List;
import javax.inject.Inject;

public class CartService implements ICartService {

    @Inject
    private ICartDAO cartDAO;

    @Override
    public CartModel findById(int id) {
        return cartDAO.findById(id);
    }
    
    @Override
    public CartModel save(int user_id) {
        int newId = cartDAO.save(user_id);
        return cartDAO.findById(newId);
    }

    @Override
    public List<CartItemModel> getAllCartItem(int id) {
        return cartDAO.getAllCartItem(id);
    }
}
