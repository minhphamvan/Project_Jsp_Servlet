package com.online_store.controller.client.cart;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.model.BillProduct;

@WebServlet(urlPatterns = { "/cart/delete-product" }) // ?id=
public class DeleteFromCartController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object object = httpSession.getAttribute("cart");

		if (object != null) {
			Map<Integer, BillProduct> map = (Map<Integer, BillProduct>) object;

			int id = Integer.parseInt(req.getParameter("id"));
			map.remove(id);

			httpSession.setAttribute("cart", map);

			resp.sendRedirect("/Online_Store_Jsp_Servlet/cart");
		} else {
			resp.sendRedirect("/Online_Store_Jsp_Servlet/product/show-all");
		}
	}
}
