package com.fashionsneaker.model;

public class CartItemModel extends AbstractModel<CartItemModel> {

    private Integer product_id;
    private Integer cart_id;
    private Integer item_quantity;
    private ProductModel item;

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public Integer getCart_id() {
        return cart_id;
    }

    public void setCart_id(Integer cart_id) {
        this.cart_id = cart_id;
    }

    public Integer getItem_quantity() {
        return item_quantity;
    }

    public void setItem_quantity(Integer item_quantity) {
        this.item_quantity = item_quantity;
    }

    public ProductModel getItem() {
        return item;
    }

    public void setItem(ProductModel item) {
        this.item = item;
    }

}
