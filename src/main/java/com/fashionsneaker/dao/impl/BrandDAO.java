package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IBrandDAO;
import com.fashionsneaker.mapper.BrandMapper;
import com.fashionsneaker.model.BrandModel;
import java.util.List;

public class BrandDAO extends AbstractDAO<BrandModel> implements IBrandDAO {

    @Override
    public List<BrandModel> findAll() {
        String sql = "SELECT * FROM brand";
        return query(sql, new BrandMapper());
    }
}
