package com.online_store.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BillProduct {
	private int id;
	private Bill bill;
	private Product product;
	private int quantity;
	private double subTotal;

	public BillProduct(Bill bill, Product product, int quantity, double subTotal) {
		super();
		this.bill = bill;
		this.product = product;
		this.quantity = quantity;
		this.subTotal = subTotal;
	}

}
