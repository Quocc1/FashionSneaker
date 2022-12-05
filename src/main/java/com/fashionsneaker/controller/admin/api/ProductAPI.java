package com.fashionsneaker.controller.admin.api;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.service.IProductService;
import com.fashionsneaker.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/api-admin-product"})
public class ProductAPI extends HttpServlet {

    @Inject
    private IProductService productService;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ProductModel productModel = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
        productModel = productService.save(productModel);
        mapper.writeValue(response.getOutputStream(), productModel);
    }
    
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ProductModel productModel = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
        productModel = productService.update(productModel);
        mapper.writeValue(response.getOutputStream(), productModel);
    }
    
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ProductModel productModel = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
        productService.delete(productModel.getId());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
