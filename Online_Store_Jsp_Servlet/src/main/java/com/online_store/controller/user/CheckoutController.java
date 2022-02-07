package com.online_store.controller.user;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.dao.impl.BillDaoImpl;
import com.online_store.dao.impl.BillProductDaoImpl;
import com.online_store.model.Bill;
import com.online_store.model.BillProduct;
import com.online_store.model.User;

@WebServlet(urlPatterns = { "/user/check-out" })
public class CheckoutController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		Object object = httpSession.getAttribute("cart");

		if (object != null) { // Nếu có giỏ hàng
			Map<Integer, BillProduct> map = (Map<Integer, BillProduct>) object;

			if (map.size() == 0) {
				resp.sendRedirect("/Online_Store_Jsp_Servlet/product/show-all");
			} else {
				double orderTotal = 0;

				for (Entry<Integer, BillProduct> entry : map.entrySet()) {
					BillProduct billProduct = entry.getValue();

					double subTotal = billProduct.getQuantity() * billProduct.getProduct().getPrice();
					
					orderTotal += subTotal;
				}

				req.setAttribute("orderTotal", orderTotal);

				req.getRequestDispatcher("/user/view/check-out.jsp").forward(req, resp);
			}

		} else { // Nếu giỏ hàng rỗng, trả về trang xem tất cả sản phẩm
			resp.sendRedirect("/Online_Store_Jsp_Servlet/product/show-all");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();

		Map<Integer, BillProduct> map = (Map<Integer, BillProduct>) httpSession.getAttribute("cart");

		User currentUser = (User) httpSession.getAttribute("currentUser");

		String recipientName = req.getParameter("recipient_name");
		String recipientPhone = req.getParameter("recipient_phone");
		String shippingAddress = req.getParameter("shipping_address");
		String note = req.getParameter("note");

		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		String orderDate = sdf.format(new Date());

		// Tính tổng tiền
		double orderTotal = 0;
		for (Entry<Integer, BillProduct> entry : map.entrySet()) {
			BillProduct billProduct = entry.getValue();

			double subTotal = billProduct.getQuantity() * billProduct.getProduct().getPrice();
			System.out.println(subTotal);
			
			orderTotal += subTotal;
		}

		String paymentMethod = req.getParameter("payment_method");
		String status = "ĐÃ LÊN ĐƠN";

		Bill bill = new Bill(currentUser, recipientName, recipientPhone, shippingAddress, note, orderDate, orderTotal,
				paymentMethod, status);

		BillDaoImpl billDaoImpl = new BillDaoImpl();
		billDaoImpl.addBill(bill);

		BillProductDaoImpl billProductDaoImpl = new BillProductDaoImpl();

		// Thêm BillProduct vào CSDL
		for (Entry<Integer, BillProduct> entry : map.entrySet()) {
			BillProduct billProduct = entry.getValue();
			
			billProduct.setBill(bill);
	
			billProductDaoImpl.addBillProduct(billProduct);
		}
		
		httpSession.removeAttribute("cart");

		resp.sendRedirect("/Online_Store_Jsp_Servlet/user/bill/show-all");
	}
}
