package com.online_store.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.dao.impl.UserDaoImpl;
import com.online_store.model.User;

@WebFilter(urlPatterns = { "/admin/*" })
public class AdminFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		HttpSession httpSession = req.getSession();
		Object object = httpSession.getAttribute("currentUser");

		if (object != null) {
			User user = (User) object;

			if (user.getRole().equals("ROLE_ADMIN")) {
				chain.doFilter(request, response);
			} else if (user.getRole().equals("ROLE_USER")) {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/user/my-account");
			} else {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/login");
			}
		} else {
			Cookie[] cookies = req.getCookies();

			boolean cRemember = false;
			String cUsername = "";
			String cPassword = "";

			for (Cookie c : cookies) {
				if (c.getName().equals("cRemember")) {
					cRemember = Boolean.parseBoolean(c.getValue());
				} else if (c.getName().equals("cUsername")) {
					cUsername = c.getValue();
				} else if (c.getName().equals("cPassword")) {
					cPassword = c.getValue();
				}
			}

			if (cRemember) {
				UserDaoImpl userDaoImpl = new UserDaoImpl();
				User cUser = userDaoImpl.getUserByUsername(cUsername);

				if (cUser != null) {
					httpSession.setAttribute("currentUser", cUser);

					if (cUser.getRole().equals("ROLE_ADMIN")) {
						resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/dashboard");
					} else if (cUser.getRole().equals("ROLE_USER")) {
						resp.sendRedirect("/Online_Store_Jsp_Servlet/user/my-account");
					}
				}
			} else {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/login");
			}
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
