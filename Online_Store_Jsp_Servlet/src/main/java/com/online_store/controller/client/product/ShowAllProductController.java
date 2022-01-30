package com.online_store.controller.client.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.model.Product;

@WebServlet(urlPatterns = {"/product/show-all"})
public class ShowAllProductController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductDaoImpl productDaoImpl = new ProductDaoImpl();
		List<Product> listProduct = productDaoImpl.getAllProduct();
		
		req.setAttribute("listProduct", listProduct);
		
		req.getRequestDispatcher("/client/view/product/show-all-product.jsp").forward(req, resp);
	}
}
