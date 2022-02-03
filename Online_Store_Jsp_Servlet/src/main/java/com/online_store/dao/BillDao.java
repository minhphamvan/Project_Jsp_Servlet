package com.online_store.dao;

import java.util.List;

import com.online_store.model.Bill;

public interface BillDao {
	public void addBill(Bill bill);

	public void updateBill(Bill bill);

	public void deleteBill(int id);

	public Bill getBillById(int id);
	
	public List<Bill> getAllBillByIdUser(int idUser);

	public List<Bill> getAllBill();

	public int count();
}
