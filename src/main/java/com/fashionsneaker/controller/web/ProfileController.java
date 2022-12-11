package com.fashionsneaker.controller.web;

import com.fashionsneaker.mapper.UserMapper;
import com.fashionsneaker.model.UserModel;
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

@WebServlet(name = "ProfileController", urlPatterns = {"/profile"})
public class ProfileController extends HttpServlet {

    @Inject
    private IUserService userService;

    @Inject
    private UserMapper mapper;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = FormUtil.toModel(UserModel.class, request);
        String view = "";
        if (user.getType().equals("show")) {
            view = "/views/web/profile.jsp";
        } else if (user.getType().equals("edit")) {
            view = "/views/web/edit-profile.jsp";
        } else if (user.getType().equals("password")) {
            view = "/views/web/edit-password.jsp";
        } else if (user.getType().equals("receipt")) {
            view = "/views/web/receipt.jsp";
        }
        MessageUtil.showMessage(request);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        UserModel user = mapper.mapParam(request);
        if (user.getFull_name() != null) {
            user = userService.update(user);
            if (user != null) {
                SessionUtil.getInstance().removeValue(request, "user");
                SessionUtil.getInstance().putValue(request, "user", user);
                response.sendRedirect(request.getContextPath() + "/profile?type=show&message=update_success");
            } else {
                response.sendRedirect(request.getContextPath() + "/profile?type=show&message=update_failed");
            }
        } else {
            String password = user.getPassword();
            String oldPassword = request.getParameter("oldPassword");
            String newPassword = request.getParameter("newPassword");
            if (password.equals(oldPassword)) {
                user = userService.changePassword(user.getId(), newPassword);
                if (user != null) {
                    SessionUtil.getInstance().removeValue(request, "user");
                    SessionUtil.getInstance().putValue(request, "user", user);
                    response.sendRedirect(request.getContextPath() + "/profile?type=show&message=update_success");
                } else {
                    response.sendRedirect(request.getContextPath() + "/profile?type=show&message=update_failed");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/profile?type=password&message=update_password_failed");
            }
        }
    }
}
