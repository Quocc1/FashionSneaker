package com.fashionsneaker.controller.admin;

import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.paging.PageRequest;
import com.fashionsneaker.paging.Pageble;
import com.fashionsneaker.service.IUserService;
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

@WebServlet(name = "AdminCustomerController", urlPatterns = {"/admin-customer"})
public class CustomerController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = FormUtil.toModel(UserModel.class, request);
        String view = "";
        if (user.getType().equals("list")) {
            Pageble pageble = new PageRequest(user.getPage(), user.getMaxPageItem(),
                    new Sorter(user.getSortName(), user.getSortBy()));
            user.setListResult(userService.findAll(pageble));
            user.setTotalItem(userService.getTotalItem());
            user.setTotalPage((int) Math.ceil((double) user.getTotalItem() / user.getMaxPageItem()));
            view = "/views/admin/customer.jsp";
        } else if (user.getType().equals("edit")) {
            if (user.getId() != null) {
                user = userService.findById(user.getId());
            }
            view = "/views/admin/edit-customer.jsp";
        }
        MessageUtil.showMessage(request);
        request.setAttribute("user", user);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
