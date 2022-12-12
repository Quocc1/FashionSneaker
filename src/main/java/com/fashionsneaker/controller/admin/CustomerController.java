//package com.fashionsneaker.controller.admin;
//
//import com.fashionsneaker.model.ProductModel;
//import com.fashionsneaker.paging.PageRequest;
//import com.fashionsneaker.paging.Pageble;
//import com.fashionsneaker.service.IProductService;
//import com.fashionsneaker.service.ICategoryService;
//import com.fashionsneaker.service.IBrandService;
//import com.fashionsneaker.sort.Sorter;
//import com.fashionsneaker.utils.FormUtil;
//import com.fashionsneaker.utils.MessageUtil;
//import java.io.IOException;
//import javax.inject.Inject;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet(name = "AdminCustomerController", urlPatterns = {"/admin-customer"})
//public class CustomerController extends HttpServlet {
//
//    @Inject
//    private ICustomerService customerService;
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        CustomerModel customer = FormUtil.toModel(ProductModel.class, request);
//        String view = "";
//        if (customer.getType().equals("list")) {
//            Pageble pageble = new PageRequest(customer.getPage(), customer.getMaxPageItem(),
//                    new Sorter(customer.getSortName(), customer.getSortBy()));
//            customer.setListResult(productService.findAll(pageble));
//            customer.setTotalItem(productService.getTotalItem());
//            customer.setTotalPage((int) Math.ceil((double) customer.getTotalItem() / customer.getMaxPageItem()));
//            view = "/views/admin/customer.jsp";
//        } else if (customer.getType().equals("edit")) {
//            if (customer.getId() != null) {
//                customer = customerService.findById(product.getId());
//            }
//            view = "/views/admin/edit-customer.jsp";
//        }
//        MessageUtil.showMessage(request);
//        request.setAttribute("customer", customer);
//        RequestDispatcher rd = request.getRequestDispatcher(view);
//        rd.forward(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}
