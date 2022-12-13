package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IReceiptDAO;
import com.fashionsneaker.dao.IProductDAO;
import com.fashionsneaker.mapper.CartMapper;
import com.fashionsneaker.mapper.CartItemMapper;
import com.fashionsneaker.model.ReceiptItemModel;
import com.fashionsneaker.model.ReceiptModel;
import java.util.List;
import javax.inject.Inject;

public class ReceiptDAO extends AbstractDAO<ReceiptModel> implements IReceiptDAO {

    @Inject
    private IProductDAO ProductDAO; 
    
    @Override
    public ReceiptModel findById(int id) {
        String sql = "SELECT * FROM cart WHERE id = ?";
        List<ReceiptModel> carts = query(sql, new CartMapper(), id);
        return carts.isEmpty() ? null : carts.get(0);
    }

    @Override
    public int save(int user_id) {
        String sql = "INSERT INTO cart VALUES(?)";
        return insert(sql, user_id);
    }

    @Override
    public List<ReceiptItemModel> getAllReceiptItem(int id) {
        String sql = "SELECT * FROM receipt_item WHERE receipt_id = ?";
        List<ReceiptItemModel> receiptItems = query(sql, new CartItemMapper(), id);
        for (ReceiptItemModel item : receiptItems) {   
            item.setItem(ProductDAO.findById(item.getProduct_id()));
        }
        return receiptItems;
    }
}
