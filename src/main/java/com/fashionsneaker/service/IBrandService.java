package com.fashionsneaker.service;

import com.fashionsneaker.model.BrandModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IBrandService {

    List<BrandModel> findAll();

    List<BrandModel> findAllToPaging(Pageble pageble);

    BrandModel findById(int id);

    BrandModel save(BrandModel productModel);

    BrandModel update(BrandModel productModel);

    void delete(int id);

    int getTotalItem();

    int getTotalProduct(int id);

}
