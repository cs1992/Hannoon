package com.hannoon.util.db;

import java.security.KeyStore.ProtectionParameter;
import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import sun.security.tools.keytool.Main;

public class DBConnection {
//	static {
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}
//	
//	public static Connection getConnection() {
//		Connection conn = null;
//		try {
////			conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.18.28:1521:orcl", "kitri", "kitri");
//			conn = DriverManager.getConnection("jdbc:oracle:thin:@168.131.153.59:1521:xe", "hannoon", "hannoon");
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return conn;
//	}
	
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Context ctx = new InitialContext();
			Context rootCtx = (Context)ctx.lookup("java:comp/env/");
			DataSource ds = (DataSource) rootCtx.lookup("jdbc/hannoon");
			conn = ds.getConnection();
//			System.out.println("¿¬°á??");
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
//	public static void main(String[] args){
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		try {
//			conn = getConnection();
//			StringBuffer sql = new StringBuffer();
//			sql.append("select * from user_info");
//			pstmt = conn.prepareStatement(sql.toString());
//			rs = pstmt.executeQuery();
//			if(rs.next()){
//				System.out.println("success");
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			DBClose.close(conn, pstmt, rs);
//		}
//	}

}
