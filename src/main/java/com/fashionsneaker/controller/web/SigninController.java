package com.fashionsneaker.controller.web;

import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.service.IUserService;
import com.fashionsneaker.utils.FormUtil;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        if (model != null) {
            if (model.isIsAdmin()) {
                response.sendRedirect(request.getContextPath() + "/admin-home");
            } else {
                response.sendRedirect(request.getContextPath() + "/home");
            }
        } else {
            String alert = request.getParameter("alert");
            String message = request.getParameter("message");
            if (message != null && alert != null) {
                request.setAttribute("message", message);
                request.setAttribute("alert", alert);
            }
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/signin.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel model = FormUtil.toModel(UserModel.class, request);
        model = userService.findByEmailAndPassword(model.getEmail(), model.getPassword());
        if (model != null) {
            SessionUtil.getInstance().putValue(request, "user", model);
            if (model.isIsAdmin()) {
                response.sendRedirect(request.getContextPath() + "/admin-home");
            } else {
                response.sendRedirect(request.getContextPath() + "/home");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/signin?message=Incorrect Email Or Password&alert=danger");
        }
    }
}
