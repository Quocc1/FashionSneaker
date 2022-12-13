package com.fashionsneaker.service;

import com.fashionsneaker.model.ReceiptItemModel;

public interface IReceiptItemService {

    ReceiptItemModel save(ReceiptItemModel receiptItem);

    ReceiptItemModel update(ReceiptItemModel receiptItem);
}
