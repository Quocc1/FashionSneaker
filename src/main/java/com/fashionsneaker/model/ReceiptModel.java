package com.fashionsneaker.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ReceiptModel extends AbstractModel<ReceiptModel> {

    private Integer user_id;
    private Integer total_money;
    private Timestamp createdDate;
    private List<ReceiptItemModel> listReciptItem = new ArrayList<>();

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getTotal_money() {
        return total_money;
    }

    public void setTotal_money(Integer total_money) {
        this.total_money = total_money;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public List<ReceiptItemModel> getListReciptItem() {
        return listReciptItem;
    }

    public void setListReciptItem(List<ReceiptItemModel> listReciptItem) {
        this.listReciptItem = listReciptItem;
    }

}
