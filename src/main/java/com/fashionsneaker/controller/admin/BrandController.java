package com.fashionsneaker.controller.admin;

import com.fashionsneaker.model.BrandModel;
import com.fashionsneaker.paging.PageRequest;
import com.fashionsneaker.paging.Pageble;
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

@WebServlet(name = "AdminBrandController", urlPatterns = {"/admin-brand"})
public class BrandController extends HttpServlet {

    @Inject
    private IBrandService brandService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BrandModel brand = FormUtil.toModel(BrandModel.class, request);
        String view = "";
        if (brand.getType().equals("list")) {
            Pageble pageble = new PageRequest(brand.getPage(), brand.getMaxPageItem(),
                    new Sorter(brand.getSortName(), brand.getSortBy()));
            brand.setListResult(brandService.findAllToPaging(pageble));
            brand.setTotalItem(brandService.getTotalItem());
            for (BrandModel model : brand.getListResult()) {
                model.setTotalProduct(brandService.getTotalProduct(model.getId()));
            }
            brand.setTotalPage((int) Math.ceil((double) brand.getTotalItem() / brand.getMaxPageItem()));
            view = "/views/admin/brand.jsp";
        } else if (brand.getType().equals("edit")) {
            if (brand.getId() != null) {
                brand = brandService.findById(brand.getId());
            }
            view = "/views/admin/edit-brand.jsp";
        }
        MessageUtil.showMessage(request);
        request.setAttribute("brand", brand);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
