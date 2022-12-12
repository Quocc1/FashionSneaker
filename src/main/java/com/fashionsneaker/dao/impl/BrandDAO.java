package com.fashionsneaker.dao.impl;

import com.fashionsneaker.dao.IBrandDAO;
import com.fashionsneaker.mapper.BrandMapper;
import com.fashionsneaker.model.BrandModel;
import com.fashionsneaker.paging.Pageble;
import java.util.List;
import org.apache.commons.lang.StringUtils;

public class BrandDAO extends AbstractDAO<BrandModel> implements IBrandDAO {

    @Override
    public List<BrandModel> findAll() {
        String sql = "SELECT * FROM brand";
        return query(sql, new BrandMapper());
    }

    @Override
    public List<BrandModel> findAllToPaging(Pageble pageble) {
        StringBuilder sql = new StringBuilder("SELECT * FROM brand");
        if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
            sql.append(" ORDER BY " + pageble.getSorter().getSortName() + " " + pageble.getSorter().getSortBy().toUpperCase() + "");
        }
        if (pageble.getOffset() != null && pageble.getLimit() != null) {
            sql.append(" OFFSET " + pageble.getOffset() + " ROWS FETCH NEXT " + pageble.getLimit() + " ROWS ONLY");
        }
        return query(sql.toString(), new BrandMapper());
    }

    @Override
    public BrandModel findById(int id) {
        String sql = "SELECT * FROM brand WHERE id = ?";
        List<BrandModel> brands = query(sql, new BrandMapper(), id);
        return brands.isEmpty() ? null : brands.get(0);
    }

    @Override
    public int save(BrandModel brandModel) {
        String sql = "INSERT INTO brand VALUES(?, ?)";
        return insert(sql, brandModel.getId(),
                brandModel.getBrand_name());
    }

    @Override
    public void update(BrandModel brandModel) {
        String sql = "UPDATE brand SET brand_name = ? WHERE id = ?";
        update(sql, brandModel.getBrand_name(),
                brandModel.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM brand WHERE id = ?";
        update(sql, id);
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT count(*) FROM brand";
        return count(sql);
    }

    @Override
    public int getTotalProduct(int id) {
        String sql = "SELECT count(*) FROM product WHERE brand_id = ?";
        return count(sql, id);
    }
}
