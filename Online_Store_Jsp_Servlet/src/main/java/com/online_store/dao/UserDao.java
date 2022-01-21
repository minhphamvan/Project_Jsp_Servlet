package com.online_store.dao;

import java.util.List;

import com.online_store.model.User;

public interface UserDao {
	public void addUser(User user);

	public void updateUser(User user);

	public void deleteUser(int id);

	public User getUserById(int id);

	public User getUserByUsername(String username);
	
	public List<User> getUserByName(String name);

	public List<User> getAllUser();

	public int count();
}
