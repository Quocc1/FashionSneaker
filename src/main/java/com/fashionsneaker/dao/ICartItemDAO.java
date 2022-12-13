package com.fashionsneaker.dao;

import com.fashionsneaker.model.CartItemModel;

public interface ICartItemDAO extends GenericDAO<CartItemModel> {

    CartItemModel findById(int id);
    
    CartItemModel findByCartIdAndProductId(int cart_id, int product_id);

    int save(CartItemModel cartItem);

    void update(CartItemModel cartItem, int oldQuantity);

    int checkExistCartItem(int product_id, int cart_id);
}
