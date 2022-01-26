package com.online_store.controller.admin.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.dao.impl.UserDaoImpl;
import com.online_store.model.Category;

@WebServlet(urlPatterns = { "/admin/user/delete" })
public class DeleteUserController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.valueOf(req.getParameter("id"));

		UserDaoImpl userDaoImpl = new UserDaoImpl();
		userDaoImpl.deleteUser(id);
		
		resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/user/show-all");
	}
}
