package com.fashionsneaker.filter;

import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if (url.contains("admin")) {
            UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "user");
            if (model != null) {
                if (model.isIsAdmin()) {
                    filterChain.doFilter(servletRequest, servletResponse);
                } else if (!model.isIsAdmin()) {
                    response.sendRedirect(request.getContextPath()+"/home");
                }
            } else {
                response.sendRedirect(request.getContextPath()+"/home");
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
