package com.online_store.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.online_store.dao.impl.UserDaoImpl;
import com.online_store.model.User;

@WebServlet(urlPatterns = { "/user/change-password" })
public class ChangePasswordController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String message = req.getParameter("message");

		if (message != null) {
			req.setAttribute("message", message);
		}

		RequestDispatcher rd = req.getRequestDispatcher("/user/view/change-password.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		User currentUser = (User) httpSession.getAttribute("currentUser");

		String oldPassword = req.getParameter("oldPassword");

		if (oldPassword.equals(currentUser.getPassword())) {
			String newPassword = req.getParameter("newPassword");
			currentUser.setPassword(newPassword);

			UserDaoImpl userDaoImpl = new UserDaoImpl();
			userDaoImpl.updateUser(currentUser);

			String message = "Đổi mật khẩu thành công.";
			resp.sendRedirect("/Online_Store_Jsp_Servlet/user/change-password?message=" + message);
		} else {
			String message = "Sai mật khẩu cũ.";
			resp.sendRedirect("/Online_Store_Jsp_Servlet/user/change-password?message=" + message);
		}

	}
}
