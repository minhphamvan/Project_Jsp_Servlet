package com.online_store.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.online_store.dao.BillProductDao;
import com.online_store.model.Bill;
import com.online_store.model.BillProduct;
import com.online_store.model.Product;
import com.online_store.model.User;

public class BillProductDaoImpl implements BillProductDao {
	private Connection conn = JDBCConnection.connectToDatabase();

	@Override
	public void addBillProduct(BillProduct billProduct) {
		try {
			String sql = "INSERT INTO bill_product(id_bill, id_product, quantity, sub_total) VALUES(?,?,?,?)";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setInt(1, billProduct.getBill().getId());
			preparedStatement.setInt(2, billProduct.getProduct().getId());
			preparedStatement.setInt(3, billProduct.getQuantity());
			preparedStatement.setDouble(4, billProduct.getSubTotal());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateBillProduct(BillProduct billProduct) {

	}

	@Override
	public void deleteBillProduct(int id) {

	}

	@Override
	public List<BillProduct> getBillProductByIdBill(int idBill) {
		List<BillProduct> list = new ArrayList<BillProduct>();

		try {
			String sql = "SELECT * FROM bill_product WHERE id_bill = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, idBill);

			ResultSet resultSet = preparedStatement.executeQuery();

			BillDaoImpl billDaoImpl = new BillDaoImpl();
			ProductDaoImpl productDaoImpl = new ProductDaoImpl();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				Bill bill = billDaoImpl.getBillById(resultSet.getInt("id_bill"));
				Product product = productDaoImpl.getProductById(resultSet.getInt("id_product"));
				int quantity = resultSet.getInt("quantity");
				double subTotal = resultSet.getDouble("sub_total");

				BillProduct billProduct = new BillProduct(id, bill, product, quantity, subTotal);

				list.add(billProduct);
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

}
