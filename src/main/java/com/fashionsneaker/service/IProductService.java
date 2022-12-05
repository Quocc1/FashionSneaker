package com.fashionsneaker.service;

import com.fashionsneaker.model.ProductModel;
import java.util.List;

public interface IProductService {

    List<ProductModel> findAll();

    ProductModel save(ProductModel productModel);

    ProductModel update(ProductModel productModel);

    void delete(int id);
}
