package com.online_store.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int id;

	private String image;
	private String name;
	private Category category;

	private double price;
	private int amount;
	private int rating;
	private String description;

	public Product(String image, String name, Category category, double price, int amount, int rating,
			String description) {
		this.image = image;
		this.name = name;
		this.category = category;
		this.price = price;
		this.amount = amount;
		this.rating = rating;
		this.description = description;
	}

}
