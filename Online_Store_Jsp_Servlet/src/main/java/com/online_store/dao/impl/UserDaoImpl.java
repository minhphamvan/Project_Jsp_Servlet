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
		try {
			String sql = "INSERT INTO user(image, username, password, full_name, email, phone_number, address, role, active, register_on) VALUES (?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setString(1, user.getImage());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getFullName());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getPhoneNumber());
			preparedStatement.setString(7, user.getAddress());
			preparedStatement.setString(8, user.getRole());
			preparedStatement.setBoolean(9, user.isActive());
			preparedStatement.setString(10, user.getRegisterOn());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateUser(User user) {
		try {
			String sql = "UPDATE user SET image = ?, username = ?, password = ?, full_name = ?, email = ?, phone_number = ?, address = ?, role = ?, active = ? WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setString(1, user.getImage());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getFullName());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.setString(6, user.getPhoneNumber());
			preparedStatement.setString(7, user.getAddress());
			preparedStatement.setString(8, user.getRole());
			preparedStatement.setBoolean(9, user.isActive());
			preparedStatement.setInt(10, user.getId());

			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteUser(int id) {
		try {
			String sql = "DELETE FROM user WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setInt(1, id);
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public User getUserById(int id) {
		try {
			String sql = "SELECT * FROM user WHERE id = ?";

			PreparedStatement preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, id);

			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String image = resultSet.getString("image");
				String username = resultSet.getString("username");
				String password = resultSet.getString("password");
				String fullName = resultSet.getString("full_name");
				String email = resultSet.getString("email");
				String phoneNumber = resultSet.getString("phone_number");
				String address = resultSet.getString("address");
				String role = resultSet.getString("role");
				boolean active = resultSet.getBoolean("active");
				String registerOn = resultSet.getString("register_on");

				User user = new User(id, image, username, password, fullName, email, phoneNumber, address, role, active,
						registerOn);

				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

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
				String registerOn = resultSet.getString("register_on");

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
