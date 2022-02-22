package com.online_store.controller.client;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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

			if (user != null) { // Kiểm tra xem hiện tại nếu đã có người dùng đăng nhập
				if (user.getRole().equals("ROLE_ADMIN")) {
					resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/dashboard");
				} else if (user.getRole().equals("ROLE_USER")) {
					resp.sendRedirect("/Online_Store_Jsp_Servlet/user/my-account");
				}
			} else { // Nếu chưa có người dùng đăng nhập
				Cookie[] cookies = req.getCookies();

				if (cookies != null) {
					String cRemember = null;
					String cUsername = null;
					String cPassword = null;

					for (Cookie c : cookies) {
						if (c.getName().equals("cUsername")) {
							cUsername = c.getValue();
						} else if (c.getName().equals("cPassword")) {
							cPassword = c.getValue();
						} else if (c.getName().equals("cRemember")) {
							cRemember = c.getValue();
						}
					}

					if (cRemember == null) {
						req.setAttribute("cUsername", cUsername);
						req.setAttribute("cPassword", cPassword);
						req.setAttribute("cRemember", "0");

						req.getRequestDispatcher("/client/view/login.jsp").forward(req, resp);
					} else if (cRemember.equals("1")) {
						req.setAttribute("cUsername", cUsername);
						req.setAttribute("cPassword", cPassword);
						req.setAttribute("cRemember", "1");

						req.getRequestDispatcher("/client/view/login.jsp").forward(req, resp);
					}
				} else {
					req.getRequestDispatcher("/client/view/login.jsp").forward(req, resp);
				}
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		httpSession.removeAttribute("currentUser");

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String remember = req.getParameter("remember");

		UserDaoImpl userDaoImpl = new UserDaoImpl();
		User user = userDaoImpl.getUserByUsername(username);

		if (user == null) { // Nếu không tồn tại user
			resp.sendRedirect("/Online_Store_Jsp_Servlet/login?error=true");
		} else {
			if (user.getPassword().equals(password)) { // Nếu đúng mật khẩu
				httpSession.setAttribute("currentUser", user); // Lưu phiên đăng nhập bằng session

				if (remember != null && remember.equals("1")) {
					Cookie cRemember = new Cookie("cRemember", "1");
					Cookie cUsername = new Cookie("cUsername", user.getUsername());
					Cookie cPassword = new Cookie("cPassword", user.getPassword());

					cRemember.setMaxAge(60);
					cUsername.setMaxAge(60);
					cPassword.setMaxAge(60);

					resp.addCookie(cRemember);
					resp.addCookie(cUsername);
					resp.addCookie(cPassword);
				}

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
