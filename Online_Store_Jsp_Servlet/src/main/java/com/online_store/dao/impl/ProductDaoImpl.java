package com.online_store.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.online_store.dao.ProductDao;
import com.online_store.model.Category;
import com.online_store.model.Product;

public class ProductDaoImpl implements ProductDao {

	private Connection conn = JDBCConnection.connectToDatabase();

	@Override
	public void addProduct(Product product) {
		try {
			String sql = "INSERT INTO product(image, name, id_category, price, amount, rating, description) VALUES(?,?,?,?,?,?,?)";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setString(1, product.getImage());
			preparedStatement.setString(2, product.getName());
			preparedStatement.setInt(3, product.getCategory().getId());
			preparedStatement.setDouble(4, product.getPrice());
			preparedStatement.setInt(5, product.getAmount());
			preparedStatement.setInt(6, product.getRating());
			preparedStatement.setString(7, product.getDescription());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateProduct(Product product) {
		try {
			String sql = "UPDATE product SET image = ?, name = ?, id_category = ?, price = ?, amount = ?, rating = ?, description = ? WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setString(1, product.getImage());
			preparedStatement.setString(2, product.getName());
			preparedStatement.setInt(3, product.getCategory().getId());
			preparedStatement.setDouble(4, product.getPrice());
			preparedStatement.setInt(5, product.getAmount());
			preparedStatement.setInt(6, product.getRating());
			preparedStatement.setString(7, product.getDescription());
			preparedStatement.setInt(8, product.getId());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteProduct(int id) {

		try {
			String sql = "DELETE FROM product WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setInt(1, id);

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Product getProductById(int id) {
		try {
			String sql = "SELECT * FROM product WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String image = resultSet.getString("image");
				String name = resultSet.getString("name");
				int idCategory = resultSet.getInt("id_category");
				double price = resultSet.getDouble("price");
				int amount = resultSet.getInt("amount");
				int rating = resultSet.getInt("rating");
				String description = resultSet.getString("description");

				CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
				Category category = categoryDaoImpl.getCategoryById(idCategory);

				Product product = new Product(id, image, name, category, price, amount, rating, description);

				return product;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Product> getProductByName(String name) {
		List<Product> list = new ArrayList<Product>();

		try {
			String sql = "SELECT * FROM product WHERE name = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, name);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String image = resultSet.getString("image");
				int idCategory = resultSet.getInt("id_category");
				double price = resultSet.getDouble("price");
				int amount = resultSet.getInt("amount");
				int rating = resultSet.getInt("rating");
				String description = resultSet.getString("description");

				CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
				Category category = categoryDaoImpl.getCategoryById(idCategory);

				Product product = new Product(id, image, name, category, price, amount, rating, description);

				list.add(product);
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Product> getProductByCategory(Category category) {
		List<Product> list = new ArrayList<Product>();

		try {
			String sql = "SELECT * FROM product WHERE id_category = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, category.getId());

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String image = resultSet.getString("image");
				String name = resultSet.getString("name");
				int idCategory = resultSet.getInt("id_category");
				double price = resultSet.getDouble("price");
				int amount = resultSet.getInt("amount");
				int rating = resultSet.getInt("rating");
				String description = resultSet.getString("description");

				Product product = new Product(id, image, name, category, price, amount, rating, description);

				list.add(product);
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<Product>();

		try {
			String sql = "SELECT * FROM product";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String image = resultSet.getString("image");
				String name = resultSet.getString("name");
				int idCategory = resultSet.getInt("id_category");
				double price = resultSet.getDouble("price");
				int amount = resultSet.getInt("amount");
				int rating = resultSet.getInt("rating");
				String description = resultSet.getString("description");

				CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
				Category category = categoryDaoImpl.getCategoryById(idCategory);

				Product product = new Product(id, image, name, category, price, amount, rating, description);
				list.add(product);
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
