package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IProductDAO;
import com.fashionsneaker.mapper.ProductMapper;
import com.fashionsneaker.model.ProductModel;
import java.util.List;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public List<ProductModel> findAll() {
        String sql = "SELECT * FROM product";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<ProductModel> findByCategoryID(int categoryId) {
        String sql = "SELECT * FROM product WHERE category_id = ?";
        return query(sql, new ProductMapper(), categoryId);
    }

    @Override
    public ProductModel findById(int id) {
        String sql = "SELECT * FROM product WHERE id = ?";
        List<ProductModel> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public int save(ProductModel productModel) {
        String sql = "INSERT INTO product VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
        return insert(sql, productModel.getCategory_id(),
                productModel.getBrand_id(),
                productModel.getProduct_name(),
                productModel.getDescription(),
                productModel.getPrice(),
                productModel.getSize(),
                productModel.getQuantity(),
                productModel.getImg_url());
    }

    @Override
    public void update(ProductModel productModel) {
        StringBuilder sql = new StringBuilder("UPDATE product SET category_id = ?, brand_id = ?,");
        sql.append(" product_name = ?, description = ?, price = ?,");
        sql.append(" size = ?, quantity = ?, img_url = ? WHERE id = ?");
        update(sql.toString(), productModel.getCategory_id(),
                productModel.getBrand_id(),
                productModel.getProduct_name(),
                productModel.getDescription(),
                productModel.getPrice(),
                productModel.getSize(),
                productModel.getQuantity(),
                productModel.getImg_url(),
                productModel.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM product WHERE id = ?";
        update(sql, id);
    }
}
