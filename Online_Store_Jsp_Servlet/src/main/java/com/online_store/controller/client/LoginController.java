package com.online_store.controller.client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.dao.impl.UserDaoImpl;
import com.online_store.model.User;

@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String error = req.getParameter("error");

		if (error != null) {
			req.setAttribute("message", "Sai tên tài khoản hoặc mật khẩu.");
			req.getRequestDispatcher("/client/view/login.jsp").forward(req, resp);
		} else {
			HttpSession httpSession = req.getSession();
			User user = (User) httpSession.getAttribute("currentUser");

			if (user != null) {
				if (user.getRole().equals("ROLE_ADMIN")) {
					resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/dashboard");
				} else if (user.getRole().equals("ROLE_USER")) {
					resp.sendRedirect("/Online_Store_Jsp_Servlet/user/my-account");
				}
			} else {
				req.getRequestDispatcher("/client/view/login.jsp").forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		httpSession.removeAttribute("currentUser");

		String username = req.getParameter("username");
		String password = req.getParameter("password");

		UserDaoImpl userDaoImpl = new UserDaoImpl();
		User user = userDaoImpl.getUserByUsername(username);

		if (user == null) { // Nếu không tồn tại user
			resp.sendRedirect("/Online_Store_Jsp_Servlet/login?error=true");
		} else {
			if (user.getPassword().equals(password)) { // Nếu đúng mật khẩu
				httpSession.setAttribute("currentUser", user);

				if (user.getRole().equals("ROLE_ADMIN")) {
					resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/dashboard");
				} else if (user.getRole().equals("ROLE_USER")) {
					resp.sendRedirect("/Online_Store_Jsp_Servlet/user/my-account");
				}
			} else { // Nếu sai mật khẩu
				resp.sendRedirect("/Online_Store_Jsp_Servlet/login?error=true");
			}
		}
	}
}
