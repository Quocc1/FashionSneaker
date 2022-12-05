package com.fashionsneaker.model;

import java.util.ArrayList;
import java.util.List;

public class ProductModel {

    private int id;
    private int category_id;
    private int brand_id;
    private String product_name;
    private String description;
    private int price;
    private String size;
    private int quantity;
    private String img_url;
    private List<ProductModel> listResult = new ArrayList<>();

    public int getId() {
        return id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public String getDescription() {
        return description;
    }

    public int getPrice() {
        return price;
    }

    public String getSize() {
        return size;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getImg_url() {
        return img_url;
    }

    public List<ProductModel> getListResult() {
        return listResult;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public void setListResult(List<ProductModel> listResult) {
        this.listResult = listResult;
    }

}
