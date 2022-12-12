package com.fashionsneaker.model;

public class ReceiptItemModel extends AbstractModel<ReceiptItemModel> {

    private Integer product_id;
    private Integer receipt_id;
    private Integer item_quantity;

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public Integer getReceipt_id() {
        return receipt_id;
    }

    public void setReceipt_id(Integer receipt_id) {
        this.receipt_id = receipt_id;
    }

    public Integer getItem_quantity() {
        return item_quantity;
    }

    public void setItem_quantity(Integer item_quantity) {
        this.item_quantity = item_quantity;
    }

}
