package com.fashionsneaker.controller.web;

import com.fashionsneaker.mapper.ReceiptItemMapper;
import com.fashionsneaker.service.IReceiptItemService;
import com.fashionsneaker.service.IReceiptService;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CheckoutController", urlPatterns = {"/checkout"})
public class CheckoutController extends HttpServlet {
//
//    @Inject
//    private IReceiptService receiptService;
//
//    @Inject
//    private IReceiptItemService receiptItemService;
//
//    @Inject
//    private ReceiptItemMapper mapper;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/checkout.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/thanks.jsp");
        rd.forward(request, response);
    }
}
