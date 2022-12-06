package com.fashionsneaker.controller.admin;

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

@WebServlet(name = "AdminProductController", urlPatterns = {"/admin-product"})
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel model = FormUtil.toModel(ProductModel.class, request);
        String view = "";
        if (model.getType().equals("list")) {
            Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
                    new Sorter(model.getSortName(), model.getSortBy()));
            model.setListResult(productService.findAll(pageble));
            model.setTotalItem(productService.getTotalItem());
            model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
            view = "/views/admin/product.jsp";
        }
        request.setAttribute("model", model);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
