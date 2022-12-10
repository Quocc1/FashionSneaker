package com.fashionsneaker.dao;

import com.fashionsneaker.model.BrandModel;
import java.util.List;

public interface IBrandDAO extends GenericDAO<BrandModel> {

    List<BrandModel> findAll();
}
