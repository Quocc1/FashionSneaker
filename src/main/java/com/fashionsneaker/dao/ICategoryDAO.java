package com.fashionsneaker.dao;

import com.fashionsneaker.model.CategoryModel;
import java.util.List;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {

    List<CategoryModel> findAll();
}
