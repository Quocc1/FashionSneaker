package com.fashionsneaker.dao;

import com.fashionsneaker.model.ReceiptItemModel;
import com.fashionsneaker.model.ReceiptModel;
import java.util.List;

public interface IReceiptDAO extends GenericDAO<ReceiptModel> {

    ReceiptModel findById(int id);

    int save(int user_id);

    List<ReceiptItemModel> getAllReceiptItem(int id);

}
