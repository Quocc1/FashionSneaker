package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.IBrandDAO;
import com.fashionsneaker.model.BrandModel;
import com.fashionsneaker.paging.Pageble;
import com.fashionsneaker.service.IBrandService;
import java.util.List;
import javax.inject.Inject;

public class BrandService implements IBrandService {

    @Inject
    private IBrandDAO brandDAO;

    @Override
    public List<BrandModel> findAll() {
        return brandDAO.findAll();
    }

    @Override
    public List<BrandModel> findAllToPaging(Pageble pageble) {
        return brandDAO.findAllToPaging(pageble);
    }

    @Override
    public BrandModel findById(int id) {
        return brandDAO.findById(id);
    }

    @Override
    public BrandModel save(BrandModel brandModel) {
        int newId = brandDAO.save(brandModel);
        return brandDAO.findById(newId);
    }

    @Override
    public BrandModel update(BrandModel brandModel) {
        brandDAO.update(brandModel);
        return brandDAO.findById(brandModel.getId());
    }

    @Override
    public void delete(int id) {
        brandDAO.delete(id);
    }

    @Override
    public int getTotalItem() {
        return brandDAO.getTotalItem();
    }

    @Override
    public int getTotalProduct(int id) {
        return brandDAO.getTotalProduct(id);
    }
}
