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
			}
			request.setAttribute("messageResponse", messageResponse);
			request.setAttribute("alert", alert);
		}
	}
}
