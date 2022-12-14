package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IProductDAO;
import com.fashionsneaker.mapper.ProductMapper;
import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;
import org.apache.commons.lang.StringUtils;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public List<ProductModel> findAll(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM product JOIN category ON category.id = product.category_id JOIN brand ON brand.id = product.brand_id");
        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy().toUpperCase() + "");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" OFFSET " + pageble.getOffset() + " ROWS FETCH NEXT " + pageble.getLimit() + " ROWS ONLY");
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    public List<ProductModel> findByCategoryId(int categoryId) {
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
        String sql = "INSERT INTO product(category_id, brand_id, product_name, description, price, size, quantity, img_url) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
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

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM product";
        return count(sql);
    }
}
