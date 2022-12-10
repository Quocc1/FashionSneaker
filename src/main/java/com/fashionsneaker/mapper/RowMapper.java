package com.fashionsneaker.mapper;

import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;

public interface RowMapper<T> {
    T mapRow(ResultSet rs);
//    T mapParam(HttpServletRequest request);
}
