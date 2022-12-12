package com.fashionsneaker.controller.web;

import com.fashionsneaker.model.CartModel;
import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.service.ICartService;
import com.fashionsneaker.service.IUserService;
import com.fashionsneaker.utils.FormUtil;
import com.fashionsneaker.utils.MessageUtil;
import com.fashionsneaker.utils.SessionUtil;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SigninController", urlPatterns = {"/signin"})
public class SigninController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Inject
    private ICartService cartService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        if (user != null) {
            if (user.isIsAdmin()) {
                response.sendRedirect(request.getContextPath() + "/admin-home");
            } else {
                response.sendRedirect(request.getContextPath() + "/home");
            }
        } else {
            MessageUtil.showMessage(request);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/signin.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = FormUtil.toModel(UserModel.class, request);
        user = userService.findByEmailAndPassword(user.getEmail(), user.getPassword());
        if (user != null) {
            SessionUtil.getInstance().putValue(request, "user", user);
            if (user.isIsAdmin()) {
                response.sendRedirect(request.getContextPath() + "/admin-home");
            } else {
                CartModel cart = cartService.findById(user.getId());
                SessionUtil.getInstance().putValue(request, "cart", cart);
                response.sendRedirect(request.getContextPath() + "/home");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/signin?message=signin_failed");
        }
    }
}
