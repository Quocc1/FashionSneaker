package com.fashionsneaker.mapper;

import com.fashionsneaker.model.ReceiptModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import javax.servlet.http.HttpServletRequest;

public class ReceiptMapper implements RowMapper<ReceiptModel> {

    @Override
    public ReceiptModel mapRow(ResultSet resultSet) {
        try {
            ReceiptModel receipt = new ReceiptModel();
            receipt.setId(resultSet.getInt("id"));
            receipt.setUser_id(resultSet.getInt("user_id"));
            receipt.setTotal_money(resultSet.getInt("total_money"));
            receipt.setCreatedDate(resultSet.getTimestamp("createddate"));
            return receipt;
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public ReceiptModel mapParam(HttpServletRequest request) {
        ReceiptModel receipt = new ReceiptModel();
        Integer id = request.getParameter("id") == null ? null : Integer.valueOf(request.getParameter("id"));
        receipt.setId(id);
        Integer user_id = request.getParameter("user_id") == null ? null : Integer.valueOf(request.getParameter("user_id"));
        receipt.setUser_id(user_id);
        Integer total_money = request.getParameter("total_money") == null ? null : Integer.valueOf(request.getParameter("total_money"));
        receipt.setUser_id(total_money);
        return receipt;
    }

}
