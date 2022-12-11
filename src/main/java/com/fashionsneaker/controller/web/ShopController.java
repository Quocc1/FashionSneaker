package com.fashionsneaker.controller.web;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.paging.PageRequest;
import com.fashionsneaker.paging.Pageble;
import com.fashionsneaker.service.IProductService;
import com.fashionsneaker.sort.Sorter;
import com.fashionsneaker.utils.FormUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ShopController", urlPatterns = {"/shop"})
public class ShopController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel product = FormUtil.toModel(ProductModel.class, request);
        Pageble pageble = new PageRequest(product.getPage(), product.getMaxPageItem(),
                new Sorter(product.getSortName(), product.getSortBy()));
        if (product.getCategory_id() != null) {
            product.setListResult(productService.findByCategoryId(product.getCategory_id()));
            product.setTotalItem(product.getListResult().size());
        } else {
            product.setListResult(productService.findAll(pageble));
            product.setTotalItem(productService.getTotalItem());
        }
        product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));
        request.setAttribute("product", product);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
