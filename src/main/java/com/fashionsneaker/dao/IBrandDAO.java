package com.fashionsneaker.dao;

import com.fashionsneaker.model.BrandModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;

public interface IBrandDAO extends GenericDAO<BrandModel> {

    List<BrandModel> findAll();

    List<BrandModel> findAllToPaging(Pageble pagable);

    BrandModel findById(int id);

    int save(BrandModel brandModel);

    void update(BrandModel brandModel);

    void delete(int id);

    int getTotalItem();

    int getTotalProduct(int id);

}
