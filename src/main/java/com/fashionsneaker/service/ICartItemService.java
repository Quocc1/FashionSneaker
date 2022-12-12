package com.fashionsneaker.service;

import com.fashionsneaker.model.CartItemModel;

public interface ICartItemService {

    CartItemModel save(CartItemModel cartItem);

    CartItemModel update(CartItemModel cartItem);

    int checkExistCartItem(int product_id, int cart_id);
}
