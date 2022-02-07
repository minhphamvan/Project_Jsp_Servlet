package com.online_store.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.model.User;

@WebFilter(urlPatterns = { "/user/*" })
public class UserFilter implements Filter {

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

			if (user.getRole().equals("ROLE_USER")) {
				chain.doFilter(request, response);
			} else if (user.getRole().equals("ROLE_ADMIN")) {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/dashboard");
			} else {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/login");
			}
		} else {
			resp.sendRedirect("/Online_Store_Jsp_Servlet/login");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	}

}
