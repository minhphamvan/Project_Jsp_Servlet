package com.online_store.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
	public static Connection connectToDatabase() {
		final String URL = "jdbc:mysql://localhost:3306/online_store?createDatabaseIfNotExist=true&useUnicode=yes&characterEncoding=UTF-8";
		final String USER = "root";
		final String PASSWORD = "";

		try {
			Class.forName("com.mysql.jdbc.Driver");

			return DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

//	public static void main(String[] args) {
//		Connection con = connectToDatabase();
//		
//		if(con == null) {
//			System.out.println("Connect thất bại !!!");
//		}else {
//			System.out.println("Connect thành công.");
//		}
//	}
}
