package com.fashionsneaker.controller.admin;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.service.IProductService;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AdminProductController", urlPatterns = {"/admin-product"})
public class ProductController extends HttpServlet {
    
    @Inject
    private IProductService productService;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel model = new ProductModel();
        model.setListResult(productService.findAll());
        request.setAttribute("model", model);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product.jsp");
        rd.forward(request, response);
    }   

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
}
