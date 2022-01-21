package com.online_store.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Bill {
	private int id;
	private User user;
	
	private String recipientName;
	private String recipientPhone;
	private String shippingAddress;
	private String note;
	
	private Date orderDate;
	private double orderTotal;
	private String paymentMethod;
	private String status;
}
