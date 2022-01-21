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
	private double sale;
	private double amount;
	private int ratting;
	private String description;

}
