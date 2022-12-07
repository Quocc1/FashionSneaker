package com.fashionsneaker.service.impl;

import com.fashionsneaker.dao.IProductDAO;
import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.paging.Pageble;
import com.fashionsneaker.service.IProductService;
import java.util.List;
import javax.inject.Inject;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;

    @Override
    public List<ProductModel> findAll(Pageble pageble) {
        return productDAO.findAll(pageble);
    }

    @Override
    public ProductModel save(ProductModel productModel) {
        int newId = productDAO.save(productModel);
        return productDAO.findById(newId);
    }

    @Override
    public ProductModel update(ProductModel productModel) {
        productDAO.update(productModel);
        return productDAO.findById(productModel.getId());
    }

    @Override
    public void delete(int id) {
        productDAO.delete(id);
    }

    @Override
    public int getTotalItem() {
        return productDAO.getTotalItem();
    }
}
