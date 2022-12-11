package com.fashionsneaker.controller.admin.api;

import com.fashionsneaker.mapper.BrandMapper;
import com.fashionsneaker.model.BrandModel;
import com.fashionsneaker.service.IBrandService;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/api-admin-brand"})

public class BrandAPI extends HttpServlet {

    @Inject
    private IBrandService brandService;

    @Inject
    private BrandMapper mapper;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String method = request.getParameter("method");
        if (method != null) {
            if (method.equals("PUT")) {
                doPut(request, response);
            } else if (method.equals("DELETE")) {
                Integer id = Integer.valueOf(request.getParameter("id"));
                BrandModel brand = brandService.findById(id);
                brand.setTotalProduct(id);
                if (brand.getTotalProduct() == 0) {
                    try {
                        brandService.delete(id);
                        response.sendRedirect(request.getContextPath() + "/admin-brand?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc&message=delete_success");

                    } catch (IOException | NumberFormatException e) {
                        response.sendRedirect(request.getContextPath() + "/admin-brand?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc&message=error_system");
                    }
                } else {
                    response.sendRedirect(request.getContextPath() + "/admin-brand?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc&message=delete_failed");
                }
            }
        } else {
            BrandModel brand = mapper.mapParam(request);
            brand = brandService.save(brand);
            if (brand != null) {
                response.sendRedirect(request.getContextPath() + "/admin-brand?type=edit&id=" + brand.getId() + "&message=insert_success");
            } else {
                response.sendRedirect(request.getContextPath() + "/admin-brand?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc&message=error_system");
            }
        }
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BrandModel brand = mapper.mapParam(request);
        brand = brandService.update(brand);

        if (brand != null) {
            response.sendRedirect(request.getContextPath() + "/admin-brand?type=edit&id=" + brand.getId() + "&message=update_success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin-brand?type=list&page=1&maxPageItem=10&sortName=id&sortBy=asc&message=error_system");
        }
    }
}
