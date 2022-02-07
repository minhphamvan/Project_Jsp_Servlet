package com.online_store.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;
import com.online_store.dao.BillDao;
import com.online_store.model.Bill;
import com.online_store.model.User;

public class BillDaoImpl implements BillDao {
	private Connection conn = JDBCConnection.connectToDatabase();

	@Override
	public void addBill(Bill bill) {
		try {
			String sql = "INSERT INTO bill(id_user, recipient_name, recipient_phone, shipping_address, note, order_date, order_total, payment_method, status) VALUES(?,?,?,?,?,?,?,?,?)";

			PreparedStatement preparedStatement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			preparedStatement.setInt(1, bill.getUser().getId());
			preparedStatement.setString(2, bill.getRecipientName());
			preparedStatement.setString(3, bill.getRecipientPhone());
			preparedStatement.setString(4, bill.getShippingAddress());
			preparedStatement.setString(5, bill.getNote());
			preparedStatement.setString(6, bill.getOrderDate());
			preparedStatement.setDouble(7, bill.getOrderTotal());
			preparedStatement.setString(8, bill.getPaymentMethod());
			preparedStatement.setString(9, bill.getStatus());

			preparedStatement.executeUpdate();

			// lấy ra giá trị ID Bill tự động tăng -> để lưu sang bill_product
			ResultSet resultSet = preparedStatement.getGeneratedKeys();

			if (resultSet.next()) { // Nếu có tạo mới và ID tự gen ở SQL
				int id = resultSet.getInt(1);

				bill.setId(id);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateBill(Bill bill) {

	}

	@Override
	public void deleteBill(int id) {

	}

	@Override
	public Bill getBillById(int id) {

		return null;
	}

	@Override
	public List<Bill> getAllBillByIdUser(int idUser) {
		List<Bill> list = new ArrayList<Bill>();

		try {
			String sql = "SELECT * FROM bill WHERE id_user = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, idUser);

			ResultSet resultSet = preparedStatement.executeQuery();

			UserDaoImpl userDaoImpl = new UserDaoImpl();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				User user = userDaoImpl.getUserById(resultSet.getInt("id_user"));
				String recipientName = resultSet.getString("recipient_name");
				String recipientPhone = resultSet.getString("recipient_phone");
				String shippingAddress = resultSet.getString("shipping_address");
				String note = resultSet.getString("note");
				String orderDate = resultSet.getString("order_date");
				double orderTotal = resultSet.getDouble("order_total");
				String paymentMethod = resultSet.getString("payment_method");
				String status = resultSet.getString("status");

				Bill bill = new Bill(id, user, recipientName, recipientPhone, shippingAddress, note, orderDate,
						orderTotal, paymentMethod, status);

				list.add(bill);
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Bill> getAllBill() {
		List<Bill> list = new ArrayList<Bill>();

		try {
			String sql = "SELECT * FROM bill";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			UserDaoImpl userDaoImpl = new UserDaoImpl();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				User user = userDaoImpl.getUserById(resultSet.getInt("id_user"));
				String recipientName = resultSet.getString("recipient_name");
				String recipientPhone = resultSet.getString("recipient_phone");
				String shippingAddress = resultSet.getString("shipping_address");
				String note = resultSet.getString("note");
				String orderDate = resultSet.getString("order_date");
				double orderTotal = resultSet.getDouble("order_total");
				String paymentMethod = resultSet.getString("payment_method");
				String status = resultSet.getString("status");

				Bill bill = new Bill(id, user, recipientName, recipientPhone, shippingAddress, note, orderDate, orderTotal,
						paymentMethod, status);

				list.add(bill);
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public int count() {

		return 0;
	}

}
