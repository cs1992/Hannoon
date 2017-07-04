package com.hannoon.in.dao;

import java.sql.*;
import java.util.Map;

import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;



public class CommonDaoImpl implements CommonDao{
	
	private static CommonDao commonDao;
	
	static {
		commonDao = new CommonDaoImpl();
	}
	
	private CommonDaoImpl(){}
	
	public static CommonDao getCommonDao(){
		return commonDao;
	}

	@Override
	public void updateHit(int gseq) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "update board set hit = hit + 1 where gseq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, gseq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public int newArticleCount(int gcode) {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(gseq) \n");
			sql.append("from board \n");
			sql.append("where gcode = ? \n");
			sql.append("and to_char(logtime, 'yymmdd') = to_char(sysdate, 'yymmdd')");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, gcode);
			rs = pstmt.executeQuery();
			rs.next();
			count = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return count;
	}

	@Override
	public int totalArticleCount(Map<String, String> map) {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(gseq) \n");
			sql.append("from board \n");
			sql.append("where gcode = ? \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
//				제목 >> like, 
//				글쓴이, 글번호 >> =
				if(key.equals("title"))
					sql.append("		and title like '%'||?||'%' \n");
				else
					sql.append("		and " + key + " = ? \n");
			}
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("gcode"));
			if(!key.isEmpty() && !word.isEmpty())
				pstmt.setString(2, word);
			rs = pstmt.executeQuery();
			rs.next();
			count = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return count;
	}

	@Override
	public int getNextGseq() {
		int gseq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "select gseq.nextval from dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			gseq = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return gseq;
	}
}
