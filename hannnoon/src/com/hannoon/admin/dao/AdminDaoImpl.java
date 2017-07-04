package com.hannoon.admin.dao;

import java.sql.*;
import java.util.*;

import com.hannoon.user.model.UserDto;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

public class AdminDaoImpl implements AdminDao {

	private static AdminDao adminDao;

	static {
		adminDao = new AdminDaoImpl();
	}
	
	private AdminDaoImpl() {}
	
	public static AdminDao getAdminDao() {
		return adminDao;
	}
	
	@Override
	public List<UserDto> userListView(Map<String, String> map) {
		List<UserDto> list = new ArrayList<UserDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("");
//			sql.append("select id, name, sn.school_name, sp.part_name, tel1, tel2, tel3, email1, email2, birth1, birth2, birth3 \n");
//			sql.append("from user_info ui, school_name sn, school_part sp \n");
//			sql.append("where ui.school_code = sn.school_code \n");
//			sql.append("and ui.part_code = sp.part_code \n");
//			sql.append("and is_manager = 0 \n");
//			sql.append("order by name \n");
			sql.append("select b.* \n");
			sql.append("from (select rownum rn, a.* \n");
			sql.append("	from (select id, name, sn.school_name, sp.part_name, tel1, tel2, tel3, email1, email2, birth1, birth2, birth3 \n");
			sql.append("	from user_info ui, school_name sn, school_part sp \n");
			sql.append("	where ui.school_code = sn.school_code \n");
			sql.append("	and ui.part_code = sp.part_code \n");
			sql.append("	and is_manager <> '1' \n");
			String key = map.get("key");
			String word = map.get("word");
			
			if(!key.isEmpty() && !word.isEmpty()) {	

				if(key.equals("name"))
					sql.append("		and name like '%'||?||'%' \n");
				else //id검색일경우
					sql.append("		and id like '%'||?||'%' \n");
			
			}
			
			sql.append("	order by name) a \n");
			sql.append("	where rownum <= ? \n");
			sql.append("	) b \n");
			sql.append("where b.rn > ? \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			int idx = 0;
			if(!key.isEmpty() && !word.isEmpty())
				pstmt.setString(++idx, word);
			pstmt.setString(++idx, map.get("end"));
			pstmt.setString(++idx, map.get("start"));
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserDto userDto = new UserDto();
				userDto.setId(rs.getString("id"));
				userDto.setName(rs.getString("name"));
				userDto.setSchoolName(rs.getString("school_name"));
				userDto.setPartName(rs.getString("part_name"));
				userDto.setTel1(rs.getString("tel1"));
				userDto.setTel2(rs.getString("tel2"));
				userDto.setTel3(rs.getString("tel3"));
				userDto.setEmail1(rs.getString("email1"));
				userDto.setEmail2(rs.getString("email2"));
				userDto.setBirth1(rs.getString("birth1"));
				userDto.setBirth2(rs.getString("birth2"));
				userDto.setBirth3(rs.getString("birth3"));
				
				list.add(userDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public String getNextId() {
		String id = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			String sql = "select board_seq.nextval from dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next(); //무조건 하나 얻어 오므로 단독으로!
			id = rs.getString(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return id;
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
			sql.append("select count(id) \n");
			sql.append("from user_info \n");
			sql.append("where is_manager <> '1' \n");
			String key = map.get("key"); //검색조건 이름이냐 id냐
			String word = map.get("word"); //검색어
			if(!key.isEmpty() && !word.isEmpty()) {	

				if(key.equals("name"))
					sql.append("		and name like '%'||?||'%' \n");
				else //id검색일경우
					sql.append("		and id like '%'||?||'%' \n");
			
			}
			pstmt = conn.prepareStatement(sql.toString());
			if(!key.isEmpty() && !word.isEmpty()) 
				pstmt.setString(1, word);
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
	public int userBlackList(String bid) {
		Connection conn = null;
	      PreparedStatement pstmt = null;
	      int cnt = 0;
	      try {
	    	  
	         conn = DBConnection.getConnection();
	         String sql = "update user_info set is_manager='2' \n";
	         sql += "where id = ?";
	         pstmt = conn.prepareStatement(sql);

	         pstmt.setString(1, bid);
	         cnt = pstmt.executeUpdate();

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         DBClose.close(conn, pstmt);
	      }
	      return cnt;
	}

}
