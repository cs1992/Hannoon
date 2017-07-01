package com.hannoon.admin.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
	public List<UserDto> userListView() {
		List<UserDto> list = new ArrayList<UserDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("");
			sql.append("select id, name, sn.school_name, sp.part_name, tel1, tel2, tel3, email1, email2, birth1, birth2, birth3 \n");
			sql.append("from user_info ui, school_name sn, school_part sp \n");
			sql.append("where ui.school_code = sn.school_code \n");
			sql.append("and ui.part_code = sp.part_code \n");
			sql.append("and is_manager = 0 \n");
			sql.append("order by name \n");
			pstmt = conn.prepareStatement(sql.toString());
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

}
