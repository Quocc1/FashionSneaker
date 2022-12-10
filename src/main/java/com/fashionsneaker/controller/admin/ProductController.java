package com.fashionsneaker.controller.admin;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.paging.PageRequest;
import com.fashionsneaker.paging.Pageble;
import com.fashionsneaker.service.IProductService;
import com.fashionsneaker.service.ICategoryService;
import com.fashionsneaker.service.IBrandService;
import com.fashionsneaker.sort.Sorter;
import com.fashionsneaker.utils.FormUtil;
import com.fashionsneaker.utils.MessageUtil;
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

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IBrandService brandService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel product = FormUtil.toModel(ProductModel.class, request);
        String view = "";
        if (product.getType().equals("list")) {
            Pageble pageble = new PageRequest(product.getPage(), product.getMaxPageItem(),
                    new Sorter(product.getSortName(), product.getSortBy()));
            product.setListResult(productService.findAll(pageble));
            product.setTotalItem(productService.getTotalItem());
            product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));
            view = "/views/admin/product.jsp";
        } else if (product.getType().equals("edit")) {
            if (product.getId() != null) {
                product = productService.findById(product.getId());
            }
            request.setAttribute("categories", categoryService.findAll());
            request.setAttribute("brands", brandService.findAll());
            view = "/views/admin/edit-product.jsp";
        }
        MessageUtil.showMessage(request);
        request.setAttribute("product", product);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
