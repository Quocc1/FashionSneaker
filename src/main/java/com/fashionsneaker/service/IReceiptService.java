package com.fashionsneaker.service;

import com.fashionsneaker.model.ReceiptModel;
import com.fashionsneaker.model.ReceiptItemModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IReceiptService {

    List<ReceiptModel> findAll();

    List<ReceiptModel> findAllToPaging(Pageble pageble);

    List<ReceiptModel> findAllByUserId(int id);

    ReceiptModel findById(int id);

    ReceiptModel save(ReceiptModel productModel);

    void delete(int id);

    int getTotalItem();

    List<ReceiptItemModel> getAllCartItem(int id);

}
