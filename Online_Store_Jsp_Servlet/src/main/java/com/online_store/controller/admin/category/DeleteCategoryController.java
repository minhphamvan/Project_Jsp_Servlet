package com.online_store.controller.admin.category;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.model.Category;

@WebServlet(urlPatterns = { "/admin/category/delete" })
public class DeleteCategoryController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.valueOf(req.getParameter("id"));

		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		categoryDaoImpl.deleteCategory(id);

		resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/category/show-all");
	}
	
}
