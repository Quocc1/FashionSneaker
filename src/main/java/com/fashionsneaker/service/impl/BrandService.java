package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.IBrandDAO;
import com.fashionsneaker.model.BrandModel;
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

}
