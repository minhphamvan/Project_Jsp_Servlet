package com.online_store.dao;

import java.util.List;

import com.online_store.model.BillProduct;

public interface BillProductDao {
	public void addBillProduct(BillProduct billProduct);

	public void updateBillProduct(BillProduct billProduct);

	public void deleteBillProduct(int id);

	public List<BillProduct> getAllProductByIdBill(int idBill);
}
