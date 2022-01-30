package com.online_store.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
	private int id;
	
	private String image;
	private String username;
	private String password;
	
	private String fullName;
	private String email;
	private String phoneNumber;
	private String address;
	
	private String role;
	private boolean active;
	private String registerOn;
}
