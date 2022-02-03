package com.online_store.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.BillProductDaoImpl;
import com.online_store.model.BillProduct;

@WebServlet(urlPatterns = { "/user/bill/details" }) // ?id=1
public class DetailsBillController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		BillProductDaoImpl billProductDaoImpl = new BillProductDaoImpl();
		List<BillProduct> list = billProductDaoImpl.getBillProductByIdBill(id);

		req.setAttribute("list", list);

		req.getRequestDispatcher("/user/view/details-bill.jsp").forward(req, resp);
	}
}
