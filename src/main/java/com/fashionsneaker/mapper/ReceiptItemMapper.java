package com.fashionsneaker.mapper;

import com.fashionsneaker.model.ReceiptItemModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

public class ReceiptItemMapper implements RowMapper<ReceiptItemModel> {

    @Override
    public ReceiptItemModel mapRow(ResultSet resultSet) {
        try {
            ReceiptItemModel receiptItem = new ReceiptItemModel();
            receiptItem.setId(resultSet.getInt("id"));
            receiptItem.setProduct_id(resultSet.getInt("product_id"));
            receiptItem.setReceipt_id(resultSet.getInt("receipt_id"));
            receiptItem.setItem_quantity(resultSet.getInt("item_quantity"));
            return receiptItem;
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public ReceiptItemModel mapParam(HttpServletRequest request) {
        ReceiptItemModel receiptItem = new ReceiptItemModel();
        Integer id = request.getParameter("id") == null ? null : Integer.valueOf(request.getParameter("id"));
        receiptItem.setId(id);
        Integer product_id = request.getParameter("product_id") == null ? null : Integer.valueOf(request.getParameter("product_id"));
        receiptItem.setProduct_id(product_id);
        Integer receipt_id = request.getParameter("receipt_id") == null ? null : Integer.valueOf(request.getParameter("receipt_id"));
        receiptItem.setReceipt_id(receipt_id);
        Integer item_quantity = request.getParameter("item_quantity") == null ? null : Integer.valueOf(request.getParameter("item_quantity"));
        receiptItem.setItem_quantity(item_quantity);
        return receiptItem;
    }

}
