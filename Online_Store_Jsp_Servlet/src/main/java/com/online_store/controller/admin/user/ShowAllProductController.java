package com.online_store.controller.admin.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.dao.impl.UserDaoImpl;
import com.online_store.model.Product;
import com.online_store.model.User;

@WebServlet(urlPatterns = {"/admin/user/show-all"})
public class ShowAllProductController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDaoImpl userDaoImpl = new UserDaoImpl();
		List<User> listUser = userDaoImpl.getAllUser();
		
		req.setAttribute("listUser", listUser);
		
		req.getRequestDispatcher("/admin/view/user/show-all-user.jsp").forward(req, resp);
	}
}
