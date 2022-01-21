package com.online_store.controller.admin.category;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.model.Category;
import com.sun.net.httpserver.HttpServer;

@WebServlet(urlPatterns = { "/admin/category/add" })
public class AddCategoryController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/admin/view/category/add-category.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		Category category = new Category(name);
		
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		categoryDaoImpl.addCategory(category);
		
		resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/category/show-all");
	}
}
