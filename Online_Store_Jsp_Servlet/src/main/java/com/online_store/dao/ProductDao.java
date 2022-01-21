package com.online_store.dao;

import java.util.List;

import com.online_store.model.Category;
import com.online_store.model.Product;

public interface ProductDao {
	public void addProduct(Product product);

	public void updateProduct(Product product);

	public void deleteProduct(int id);

	public Product getProductById(int id);
	
	public List<Product> getProductByName(String name);
	
	public List<Product> getProductByCategory(Category category);

	public List<Product> getAllProduct();

	public int count();
}
