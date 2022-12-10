package com.fashionsneaker.service;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IProductService {

    List<ProductModel> findAll(Pageble pageble);

    ProductModel findById(int id);

    List<ProductModel> findByCategoryId(int id);

    ProductModel save(ProductModel productModel);

    ProductModel update(ProductModel productModel);

    void delete(int id);

    int getTotalItem();

}
