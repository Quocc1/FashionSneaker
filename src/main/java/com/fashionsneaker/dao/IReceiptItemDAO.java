package com.fashionsneaker.dao;

import com.fashionsneaker.model.ReceiptItemModel;

public interface IReceiptItemDAO extends GenericDAO<ReceiptItemModel> {

    ReceiptItemModel findById(int id);

    ReceiptItemModel findByCartIdAndProductId(int cart_id, int product_id);

    int save(ReceiptItemModel receiptItem);

    void update(ReceiptItemModel receiptItem, int oldQuantity);

    int checkExistCartItem(int product_id, int cart_id);
}
