package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.ICartItemDAO;
import com.fashionsneaker.model.CartItemModel;
import com.fashionsneaker.service.ICartItemService;
import javax.inject.Inject;

public class CartItemService implements ICartItemService {

    @Inject
    private ICartItemDAO cartItemDAO;

    @Override
    public CartItemModel save(CartItemModel cartItem) {
        int newId = cartItemDAO.save(cartItem);
        return cartItemDAO.findById(newId);
    }

    @Override
    public CartItemModel update(CartItemModel cartItem) {
        cartItemDAO.update(cartItem);
        return cartItemDAO.findByCartIdAndProductId(cartItem.getCart_id(), cartItem.getProduct_id());
    }

    @Override
    public int checkExistCartItem(int product_id, int cart_id) {
        return cartItemDAO.checkExistCartItem(product_id, cart_id);
    }
}
