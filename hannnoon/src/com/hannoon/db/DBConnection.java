package com.hannoon.db;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		Connection conn = null;
		try {
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.28:1521:orcl", "kitri", "kitri");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@168.131.153.59:1521:xe", "hannoon", "hannoon");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

}
