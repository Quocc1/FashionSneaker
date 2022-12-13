package com.fashionsneaker.dao;

import com.fashionsneaker.model.CartItemModel;
import com.fashionsneaker.model.CartModel;
import java.util.List;

public interface ICartDAO extends GenericDAO<CartModel> {

    CartModel findById(int id);
    
    CartModel findByUserId(int id);

    int save(int user_id);

    List<CartItemModel> getAllCartItem(int id);

}
