package com.fashionsneaker.mapper;

import com.fashionsneaker.model.ProductModel;
import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class ProductMapper implements RowMapper<ProductModel> {

    @Override
    public ProductModel mapRow(ResultSet resultSet) {
        try {
            ResultSetMetaData rsmd = resultSet.getMetaData();
            ProductModel product = new ProductModel();
            product.setId(resultSet.getInt("id"));
            product.setCategory_id(resultSet.getInt("category_id"));
            if (rsmd.getColumnCount() > 11) {
                product.setCategory_name(resultSet.getString("category_name"));
                product.setBrand_name(resultSet.getString("brand_name"));
            }
            product.setBrand_id(resultSet.getInt("brand_id"));
            product.setProduct_name(resultSet.getString("product_name"));
            product.setDescription(resultSet.getString("description"));
            product.setPrice(resultSet.getInt("price"));
            product.setSize(resultSet.getString("size"));
            product.setQuantity(resultSet.getInt("quantity"));
            product.setImg_url(resultSet.getString("img_url"));
            return product;
        } catch (SQLException e) {
            return null;
        }
    }

    @Override
    public ProductModel mapParam(HttpServletRequest request) {
        ProductModel product = new ProductModel();
        Integer id = request.getParameter("id").equals("") ?  null : Integer.valueOf(request.getParameter("id"));
        product.setId(id);
        Integer category_id = Integer.valueOf(request.getParameter("category_id"));
        product.setCategory_id(category_id);
        Integer brand_id = Integer.valueOf(request.getParameter("brand_id"));
        product.setBrand_id(brand_id);
        String product_name = request.getParameter("product_name");
        product.setProduct_name(product_name);
        String description = request.getParameter("description");
        product.setDescription(description);
        Integer price = Integer.valueOf(request.getParameter("price"));
        product.setPrice(price);
        String size = request.getParameter("size");
        product.setSize(size);
        Integer quantity = Integer.valueOf(request.getParameter("quantity"));
        product.setQuantity(quantity);
        String img_url = request.getParameter("img_url");
        try {
            if (img_url == null && !request.getParts().isEmpty()) {
                Part filePart = request.getPart("img");
                String fileName = filePart.getSubmittedFileName();
                String path = request.getServletContext().getRealPath("");
                path = path.substring(0, path.indexOf("target")) + "\\src\\main\\webapp\\ProductImage";
                File fileSaveDir = new File(path);
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdir();
                }
                filePart.write(path + File.separator + fileName);
                product.setImg_url(fileName);
            } else {
                product.setImg_url(img_url);
            }
        } catch (IOException | ServletException ex) {
            Logger.getLogger(ProductMapper.class.getName()).log(Level.SEVERE, null, ex);
        }

        return product;
    }

}
