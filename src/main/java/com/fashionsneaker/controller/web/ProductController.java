package com.fashionsneaker.controller.web;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.service.IProductService;
import com.fashionsneaker.utils.FormUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ProductController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel model = FormUtil.toModel(ProductModel.class, request);
        model = productService.findById(model.getId());
        request.setAttribute("model", model);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop-details.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
