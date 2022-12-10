package com.fashionsneaker.controller.admin.api;

import com.fashionsneaker.mapper.ProductMapper;
import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.service.IProductService;
import java.io.File;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(urlPatterns = {"/api-admin-product"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 100
)
public class ProductAPI extends HttpServlet {

    @Inject
    private IProductService productService;

    @Inject
    private ProductMapper mapper;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String method = request.getParameter("method");
        if (method != null) {
            if (method.equals("PUT")) {
                doPut(request, response);
            } else if (method.equals("DELETE")) {

                try {
                    Integer id = Integer.valueOf(request.getParameter("id"));
                    productService.delete(id);
                    response.sendRedirect(request.getContextPath() + "/admin-product?type=list&page=1&maxPageItem=5&sortName=product.id&sortBy=asc&message=delete_success");

                } catch (IOException | NumberFormatException e) {
                    response.sendRedirect(request.getContextPath() + "/admin-product?type=list&page=1&maxPageItem=5&sortName=product.id&sortBy=asc&message=error_system");
                }
            }
        } else {
            ProductModel product = mapper.mapParam(request);
            product = productService.save(product);
            Part filePart = request.getPart("img");
            String fileName = filePart.getSubmittedFileName();
            if (product != null) {
                String path = getServletContext().getRealPath("") + "ProductImage";
                File fileSaveDir = new File(path);
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdir();
                }
                filePart.write(path + File.separator + fileName);

                response.sendRedirect(request.getContextPath() + "/admin-product?type=edit&id=" + product.getId() + "&message=insert_success");
            } else {
                response.sendRedirect(request.getContextPath() + "/admin-product?type=list&page=1&maxPageItem=5&sortName=product.id&sortBy=asc&message=error_system");
            }
        }
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel product = mapper.mapParam(request);
        product = productService.update(product);

        if (product != null) {
            response.sendRedirect(request.getContextPath() + "/admin-product?type=edit&id=" + product.getId() + "&message=update_success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin-product?type=list&page=1&maxPageItem=5&sortName=product.id&sortBy=asc&message=error_system");
        }
    }
}
