package com.online_store.controller.client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.model.Category;
import com.online_store.model.Product;

@WebServlet(urlPatterns = { "/product/search" })
public class SearchProductByCategoryController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<Category> listCategory = categoryDaoImpl.getAllCategory();
		req.setAttribute("listCategory", listCategory);

		int idCategory = Integer.parseInt(req.getParameter("idCategory"));
		Category category = categoryDaoImpl.getCategoryById(idCategory);

		ProductDaoImpl productDaoImpl = new ProductDaoImpl();
		List<Product> listProduct = productDaoImpl.getProductByCategory(category);

		req.setAttribute("listProduct", listProduct);

		req.getRequestDispatcher("/client/view/product/show-all-product.jsp").forward(req, resp);
	}
}
