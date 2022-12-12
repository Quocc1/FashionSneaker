package com.fashionsneaker.model;

import java.util.ArrayList;
import java.util.List;

public class CartModel extends AbstractModel<CartModel> {

    private Integer user_id;
    private List<CartItemModel> listCartItem = new ArrayList<>();

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public List<CartItemModel> getListCartItem() {
        return listCartItem;
    }

    public void setListCartItem(List<CartItemModel> listCartItem) {
        this.listCartItem = listCartItem;
    }
    
}
