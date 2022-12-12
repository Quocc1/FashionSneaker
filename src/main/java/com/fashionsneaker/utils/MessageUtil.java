package com.fashionsneaker.utils;

import javax.servlet.http.HttpServletRequest;

public class MessageUtil {

    public static void showMessage(HttpServletRequest request) {
        if (request.getParameter("message") != null) {
            String messageResponse = "";
            String alert = "";
            String message = request.getParameter("message");
            if (message.equals("insert_success")) {
                messageResponse = "Thêm Thành Công";
                alert = "success";
            } else if (message.equals("update_success")) {
                messageResponse = "Cập Nhật Thành Công";
                alert = "success";
            } else if (message.equals("delete_success")) {
                messageResponse = "Xóa Thành Công";
                alert = "success";
            } else if (message.equals("error_system")) {
                messageResponse = "Lỗi, Không Thể Hoàn Thành Tác Vụ";
                alert = "danger";
            } else if (message.equals("delete_failed")) {
                messageResponse = "Không Thể Xóa, Vẫn Còn Sản Phẩm Có Thương Hiệu Này Trong Database";
                alert = "danger";
            } else if (message.equals("signin_failed")) {
                messageResponse = "Email Hoặc Mật Khẩu Sai";
                alert = "danger";
            } else if (message.equals("signup_success")) {
                messageResponse = "Tạo Tài Khoản Thành Công, Vui Lòng Đăng Nhập Để Tiếp Tục Mua Hàng";
                alert = "success";
            } else if (message.equals("signup_failed")) {
                messageResponse = "Email Đã Tồn Tại, Vui Lòng Chọn Email Khác";
                alert = "danger";
            } else if (message.equals("update_password_failed")) {
                messageResponse = "Mật Khẩu Cũ Không Chính Xác, Vui Lòng Nhập Lại";
                alert = "danger";
            } else if (message.equals("signin_required")) {
                messageResponse = "Vui Lòng Đang Nhập Để Có Thể Sử Dụng Đầy Đủ Các Chức Năng Trong Cửa Hàng";
                alert = "danger";
            }
            request.setAttribute("messageResponse", messageResponse);
            request.setAttribute("alert", alert);
        }
    }
}
