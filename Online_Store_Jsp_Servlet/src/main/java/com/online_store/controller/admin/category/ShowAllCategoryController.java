package com.online_store.controller.admin.category;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.model.Category;

@WebServlet(urlPatterns = { "/admin/category/show-all" })
public class ShowAllCategoryController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<Category> listCategory = categoryDaoImpl.getAllCategory();
		
		req.setAttribute("listCategory", listCategory);

		req.getRequestDispatcher("/admin/view/category/show-all-category.jsp").forward(req, resp);
	}
}
