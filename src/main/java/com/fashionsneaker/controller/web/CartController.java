package com.fashionsneaker.controller.web;

import com.fashionsneaker.mapper.CartItemMapper;
import com.fashionsneaker.model.CartModel;
import com.fashionsneaker.model.CartItemModel;
import com.fashionsneaker.model.UserModel;
import com.fashionsneaker.service.ICartItemService;
import com.fashionsneaker.service.ICartService;
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

@WebServlet(name = "CartController", urlPatterns = {"/cart"})
public class CartController extends HttpServlet {

    @Inject
    private ICartService cartService;

    @Inject
    private ICartItemService cartItemService;

    @Inject
    private CartItemMapper mapper;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/signin?message=signin_required");
        } else {
            CartModel cart = (CartModel) SessionUtil.getInstance().getValue(request, "cart");
            cart.setListCartItem(cartService.getAllCartItem(cart.getId()));
            MessageUtil.showMessage(request);
            request.setAttribute("cart", cart);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/shopping-cart.jsp");
            rd.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "user");
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/signin?message=signin_required");
        } else {
            CartItemModel cartItem = mapper.mapParam(request);
            CartModel cart = (CartModel) SessionUtil.getInstance().getValue(request, "cart");
            cartItem.setCart_id(cart.getId());
            int id = cartItemService.checkExistCartItem(cartItem.getProduct_id(), cart.getId());
            if (id != 0) {
                doPut(request, response);
            } else {
                cartItem = cartItemService.save(cartItem);
                if (cartItem != null) {
                    response.sendRedirect(request.getContextPath() + "/cart?&message=insert_success");
                } else {
                    response.sendRedirect(request.getContextPath() + "/cart?&message=insert_failed");
                }
            }
        }
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CartItemModel cartItem = mapper.mapParam(request);
        CartModel cart = (CartModel) SessionUtil.getInstance().getValue(request, "cart");
        cartItem.setCart_id(cart.getId());
        cartItem = cartItemService.update(cartItem);
        if (cartItem != null) {
            SessionUtil.getInstance().removeValue(request, "cart");
            cart.setListCartItem(cartService.getAllCartItem(cart.getId()));
            SessionUtil.getInstance().putValue(request, "cart", cart);
            response.sendRedirect(request.getContextPath() + "/cart?&message=insert_success");
        } else {
            response.sendRedirect(request.getContextPath() + "/cart?&message=insert_failed");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
