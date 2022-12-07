package com.fashionsneaker.dao;

import com.fashionsneaker.mapper.RowMapper;
import java.util.List;

public interface GenericDAO<T> {
        <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
        void update(String sql, Object... parameters);
        int insert(String sql, Object... parameters);
	int count(String sql, Object... parameters);
}
