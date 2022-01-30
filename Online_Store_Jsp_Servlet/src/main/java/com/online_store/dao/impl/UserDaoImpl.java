package com.online_store.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.online_store.dao.UserDao;
import com.online_store.model.User;

public class UserDaoImpl implements UserDao {

	private Connection conn = JDBCConnection.connectToDatabase();

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User getUserByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getUserByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> getAllUser() {
		List<User> list = new ArrayList<User>();

		try {
			String sql = "SELECT * FROM user";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String image = resultSet.getString("image");
				String username = resultSet.getString("username");
				String password = resultSet.getString("password");
				String fullName = resultSet.getString("full_name");
				String email = resultSet.getString("email");
				String phoneNumber = resultSet.getString("phone_number");
				String address = resultSet.getString("address");
				String role = resultSet.getString("role");
				boolean active = resultSet.getBoolean("active");
				Date registerOn = resultSet.getDate("register_on");

				User user = new User(id, image, username, password, fullName, email, phoneNumber, address, role, active,
						registerOn);
				
				list.add(user);
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}

}
