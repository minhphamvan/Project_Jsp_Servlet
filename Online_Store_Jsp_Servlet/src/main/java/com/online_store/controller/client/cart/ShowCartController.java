package com.online_store.controller.client.cart;

import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.model.BillProduct;

@WebServlet(urlPatterns = { "/cart", "/cart/show" })
public class ShowCartController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object object = httpSession.getAttribute("cart");

		if (object != null) {
			Map<Integer, BillProduct> map = (Map<Integer, BillProduct>) object;

			if (map.size() == 0) {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/product/show-all");
			} else {
				double orderTotal = 0;

				for (Entry<Integer, BillProduct> entry : map.entrySet()) {
					BillProduct billProduct = entry.getValue();

					orderTotal += billProduct.getSubTotal();
				}

				req.setAttribute("orderTotal", orderTotal);

				req.getRequestDispatcher("/client/view/cart/show-cart.jsp").forward(req, resp);
			}
		} else {
			resp.sendRedirect("/Online_Store_Jsp_Servlet/product/show-all");
		}
	}
}
