package com.online_store.controller.admin.bill;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.BillDaoImpl;
import com.online_store.model.Bill;

@WebServlet(urlPatterns = { "/admin/bill/show-all" })
public class ShowAllBillController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BillDaoImpl billDaoImpl = new BillDaoImpl();
		List<Bill> list = billDaoImpl.getAllBill();

		req.setAttribute("list", list);

		req.getRequestDispatcher("/admin/view/bill/show-all-bill.jsp").forward(req, resp);
	}
}
