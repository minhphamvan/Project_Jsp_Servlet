package com.online_store.controller.admin.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.model.Category;

@WebServlet(urlPatterns = { "/admin/product/delete" })
public class DeleteProductController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.valueOf(req.getParameter("id"));

		ProductDaoImpl productDaoImpl = new ProductDaoImpl();
		productDaoImpl.deleteProduct(id);
		
		resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/product/show-all");
	}
	
}
