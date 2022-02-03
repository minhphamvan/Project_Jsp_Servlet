package com.online_store.controller.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.online_store.dao.impl.BillDaoImpl;
import com.online_store.model.Bill;
import com.online_store.model.User;

@WebServlet(urlPatterns = { "/user/bill/show-all" })
public class ShowAllBillController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();
		User currentUser = (User) httpSession.getAttribute("currentUser");

		BillDaoImpl billDaoImpl = new BillDaoImpl();
		List<Bill> list = billDaoImpl.getAllBillByIdUser(currentUser.getId());

		req.setAttribute("list", list);

		req.getRequestDispatcher("/user/view/show-all-bill.jsp").forward(req, resp);
	}
}
