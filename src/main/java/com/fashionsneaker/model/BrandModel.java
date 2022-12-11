package com.fashionsneaker.model;

public class BrandModel extends AbstractModel<BrandModel> {

    private String brand_name;
    private Integer totalProduct;

    public Integer getTotalProduct() {
        return totalProduct;
    }

    public void setTotalProduct(Integer totalProduct) {
        this.totalProduct = totalProduct;
    }

    public String getBrand_name() {
        return brand_name;
    }

    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }


}
