package com.fashionsneaker.controller.admin.api;

import com.fashionsneaker.model.ProductModel;
import com.fashionsneaker.service.IProductService;
import com.fashionsneaker.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;
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
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 100
)
public class ProductAPI extends HttpServlet {

    @Inject
    private IProductService productService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

//        String cateid = request.getParameter("category_id");
//        if (!request.getParts().isEmpty()) {
//            Part part = request.getPart("img");
//            String fileName = part.getSubmittedFileName();
//            String path = getServletContext().getRealPath("") + "ProductImage";
//            File file = new File(path);
//            part.write(path + File.separator + fileName);
//        }
//        ProductModel product = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
        ProductModel product;
        product = new ProductModel();
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
        Part filePart = request.getPart("img");
        String fileName = filePart.getSubmittedFileName();
        product.setImg_url(fileName);

        product = productService.save(product);

        if (product.getId() != 0) {
            String path = getServletContext().getRealPath("") + "\\ProductImage";
            System.out.println("Hello Java");
            for (Part part : request.getParts()) {
                try {
                    part.write(path + File.separator + fileName);
                } catch (IOException e) {
                    System.out.print(e);
                }
            }
            response.sendRedirect(request.getContextPath() + "/admin-product?type=edit&id=" + product.getId() + "&message=update_success");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin-product?type=list&page=1&maxPageItem=5&sortName=product.id&sortBy=asc&message=error_system");
        }
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
