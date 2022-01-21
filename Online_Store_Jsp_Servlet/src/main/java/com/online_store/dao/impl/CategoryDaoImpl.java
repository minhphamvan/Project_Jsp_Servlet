package com.online_store.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.online_store.dao.CategoryDao;
import com.online_store.model.Category;

public class CategoryDaoImpl implements CategoryDao {

	private Connection conn = JDBCConnection.connectToDatabase();

	@Override
	public void addCategory(Category category) {
		String sql = "INSERT INTO category(name) VALUES (?)";

		try {
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			
			preparedStatement.setString(1, category.getName());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateCategory(Category category) {
		String sql = "UPDATE category SET name = ? WHERE id = ?";

		try {
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			
			preparedStatement.setString(1, category.getName());
			preparedStatement.setInt(2, category.getId());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteCategory(int id) {
		String sql = "DELETE FROM category WHERE id = ?";

		try {
			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			
			preparedStatement.setInt(1, id);

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Category getCategoryById(int id) {
		try {
			String sql = "SELECT * FROM category WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String name = resultSet.getString("name");

				Category category = new Category(id, name);

				return category;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public List<Category> getAllCategory() {

		List<Category> list = new ArrayList<Category>();

		try {
			String sql = "SELECT * FROM category";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");

				Category category = new Category(id, name);
				list.add(category);
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
