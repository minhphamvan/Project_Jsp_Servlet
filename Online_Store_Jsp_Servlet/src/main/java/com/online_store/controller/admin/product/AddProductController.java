package com.online_store.controller.admin.product;

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

@WebServlet(urlPatterns = { "/admin/product/add" })
public class AddProductController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<Category> listCategory = categoryDaoImpl.getAllCategory();

		req.setAttribute("listCategory", listCategory);

		req.getRequestDispatcher("/admin/view/product/add-product.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String image = "";
		String name = req.getParameter("name");
		int idCategory = Integer.parseInt(req.getParameter("id_category"));
		double price = Double.parseDouble(req.getParameter("price"));
		int amount = Integer.parseInt(req.getParameter("amount"));
		int rating = Integer.parseInt(req.getParameter("rating"));
		String description = req.getParameter("description");

		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		Category category = categoryDaoImpl.getCategoryById(idCategory);

		Product product = new Product(image, name, category, price, amount, rating, description);

		ProductDaoImpl productDaoImpl = new ProductDaoImpl();
		productDaoImpl.addProduct(product);

		resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/product/show-all");
	}
}
