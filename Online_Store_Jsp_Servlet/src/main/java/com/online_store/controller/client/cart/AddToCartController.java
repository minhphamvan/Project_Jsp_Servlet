package com.online_store.controller.client.cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.model.BillProduct;
import com.online_store.model.Product;

@WebServlet(urlPatterns = { "/add-to-cart" }) // ?id=1
public class AddToCartController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		ProductDaoImpl productDaoImpl = new ProductDaoImpl();
		Product product = productDaoImpl.getProductById(id);

		HttpSession httpSession = req.getSession();
		Object object = httpSession.getAttribute("cart");

		if (object == null) { // Nếu chưa có session giỏ hàng
			BillProduct billProduct = new BillProduct();
			billProduct.setProduct(product);
			billProduct.setQuantity(1);
			billProduct.setSubTotal(product.getPrice());

			Map<Integer, BillProduct> map = new HashMap<Integer, BillProduct>();
			map.put(id, billProduct);

			httpSession.setAttribute("cart", map);
		} else { // Nếu có session giỏ hàng rồi
			Map<Integer, BillProduct> map = (Map<Integer, BillProduct>) object;

			BillProduct billProduct = map.get(id);

			if (billProduct == null) {
				billProduct = new BillProduct();

				billProduct.setProduct(product);
				billProduct.setQuantity(1);
				billProduct.setSubTotal(product.getPrice());

				map.put(id, billProduct);
			} else {
				billProduct.setQuantity(billProduct.getQuantity() + 1);
				billProduct.setSubTotal(billProduct.getQuantity() * product.getPrice());
			}

			httpSession.setAttribute("cart", map);
		}

		resp.sendRedirect("/Online_Store_Jsp_Servlet/cart");
	}
}
