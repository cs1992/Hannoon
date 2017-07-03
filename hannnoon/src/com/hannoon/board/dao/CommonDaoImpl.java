package com.hannoon.board.dao;

import java.sql.*;
import java.util.Map;

import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

public class CommonDaoImpl implements CommonDao { //강사님꺼 그냥 일단 가져다 놓은거에염

	private static CommonDao commonDao;

	static {
		commonDao = new CommonDaoImpl();
	}
	
	private CommonDaoImpl() {}
	
	public static CommonDao getCommonDao() {
		return commonDao;
	}
	
	@Override
	public int getNextSeq() {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "select board_seq.nextval from dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next(); //무조건 하나 얻어 오므로 단독으로!
			seq = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return seq;
	}

	@Override
	public void updateHit(int seq) {
		Connection conn = null;
	
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "update board set hit = hit + 1 where seq = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public int newArticleCount(int bcode) {
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(seq) \n");
			sql.append("from board \n");
			sql.append("where bcode = ? \n");
			sql.append("and to_char(logtime,'yymmdd') = to_char(sysdate,'yymmdd') \n");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, bcode);
			rs = pstmt.executeQuery();
			rs.next(); //무조건 하나 얻어 오므로 단독으로!
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
			sql.append("select count(seq) \n");
			sql.append("from board \n");
			sql.append("where bcode = ? \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {	
//				제목 >> like
//				글쓴이, 글번호 >> = 
				if(key.equals("subject"))
					sql.append("		and subject like '%'||?||'%' \n");
				else
					sql.append("		and " + key + " = ? \n");
			}
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("bcode"));
			if(!key.isEmpty() && !word.isEmpty()) 
				pstmt.setString(2, word);
			rs = pstmt.executeQuery();
			rs.next(); //무조건 하나 얻어 오므로 단독으로!
			count = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return count;
	}

}
