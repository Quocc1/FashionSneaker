package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.IReceiptItemDAO;
import com.fashionsneaker.model.ReceiptItemModel;
import com.fashionsneaker.service.IReceiptItemService;
import javax.inject.Inject;

public class ReceiptItemService implements IReceiptItemService {

    @Inject
    private IReceiptItemDAO receiptItemDAO;

    @Override
    public ReceiptItemModel save(ReceiptItemModel receiptItem) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ReceiptItemModel update(ReceiptItemModel receiptItem) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
