package com.fashionsneaker.controller.web;

import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.service.ICartService;
import com.fashionsneaker.service.IUserService;
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

@WebServlet(name = "SignupController", urlPatterns = {"/signup"})
public class SignupController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Inject
    private ICartService cartService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String alert = request.getParameter("alert");
        String message = request.getParameter("message");
        if (message != null && alert != null) {
            request.setAttribute("message", message);
            request.setAttribute("alert", alert);
        }
        MessageUtil.showMessage(request);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/signup.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        UserModel user = FormUtil.toModel(UserModel.class, request);
        user = userService.save(user);
        if (user != null) {
            cartService.save(user.getId());
            response.sendRedirect(request.getContextPath() + "/signin?message=signup_success");
        } else {
            response.sendRedirect(request.getContextPath() + "/signup?message=signup_failed");
        }
    }
}
