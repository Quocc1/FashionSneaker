package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IReceiptItemDAO;
import com.fashionsneaker.model.ReceiptItemModel;

public class ReceiptItemDAO extends AbstractDAO<ReceiptItemModel> implements IReceiptItemDAO {

    @Override
    public ReceiptItemModel findById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ReceiptItemModel findByCartIdAndProductId(int cart_id, int product_id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int save(ReceiptItemModel receiptItem) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(ReceiptItemModel receiptItem, int oldQuantity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int checkExistCartItem(int product_id, int cart_id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
