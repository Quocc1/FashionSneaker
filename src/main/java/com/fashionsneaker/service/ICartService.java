package com.fashionsneaker.service;

import com.fashionsneaker.model.CartItemModel;
import com.fashionsneaker.model.CartModel;
import java.util.List;

public interface ICartService {

    CartModel findById(int id);

    CartModel save(int user_id);
    
    List<CartItemModel> getAllCartItem(int id);

}
