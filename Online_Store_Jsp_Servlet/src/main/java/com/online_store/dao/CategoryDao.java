package com.online_store.dao;

import java.util.List;

import com.online_store.model.Category;

public interface CategoryDao {
	public void addCategory(Category category);

	public void updateCategory(Category category);

	public void deleteCategory(int id);

	public Category getCategoryById(int id);

	public List<Category> getAllCategory();

	public int count();
}
