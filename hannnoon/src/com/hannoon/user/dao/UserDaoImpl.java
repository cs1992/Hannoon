package com.hannoon.user.dao;

import java.sql.*;
import java.util.*;

import com.hannoon.user.model.UserDto;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

public class UserDaoImpl implements UserDao {
	
	private static UserDao userDao;

	static {
		userDao = new UserDaoImpl();
	}
	
	private UserDaoImpl() {}
	
	public static UserDao getUserDao() {
		return userDao;
	}

	@Override
	public int idcheck(String id) {
		int count = 1; //0으로 주면 오류났을때 id검색 해서 없는주 알고 사용할 수 있따고 뜨기 때문에 1로 초기화 해줌
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(id) \n");
			sql.append("from user_info \n");
			sql.append("where id=?");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, id);
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
	public int register(UserDto userDto) {
		
		int cnt = 0; //정상적인 경로가 아닌 이상 다 안되는걸로 나오게! 부정적인거!
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append("	into user_info(id, school_code, part_code, pw, name, tel1, tel2, tel3, email1, email2, zip1, zip2, addr1, addr2, birth1, birth2, birth3, is_manager) \n");
			sql.append("	values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0) \n");
			sql.append("select * from dual \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0; //그냥 1,2,..로 넣어주면 나중에 순서바뀌거나 빠지면 하나하나 바꿔조야되서 귀차나 
			pstmt.setString(++idx, userDto.getId());
			pstmt.setInt(++idx, userDto.getSchoolCode());
			pstmt.setInt(++idx, userDto.getPartCode());
			pstmt.setString(++idx, userDto.getPw());
			pstmt.setString(++idx, userDto.getName());
			pstmt.setString(++idx, userDto.getTel1());
			pstmt.setString(++idx, userDto.getTel2());
			pstmt.setString(++idx, userDto.getTel3());
			pstmt.setString(++idx, userDto.getEmail1());
			pstmt.setString(++idx, userDto.getEmail2());
			pstmt.setString(++idx, userDto.getZip1());
			pstmt.setString(++idx, userDto.getZip2());
			pstmt.setString(++idx, userDto.getAddr1());
			pstmt.setString(++idx, userDto.getAddr2());
			pstmt.setString(++idx, userDto.getBirth1());
			pstmt.setString(++idx, userDto.getBirth2());
			pstmt.setString(++idx, userDto.getBirth3());
			cnt = pstmt.executeUpdate();
		} catch(Exception e)
		{
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		
		return cnt; //항상 이거 먼저 바꾸고 중간 내용 채울것
	}

	@Override
	public UserDto login(Map<String, String> map) {
		UserDto userDto = null; //여기서 일부러 new안함 id, pw 일치할때 만들어야지
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			
			StringBuffer sql = new StringBuffer();
			sql.append("select id, name, is_manager \n");
			sql.append("from user_info \n");
			sql.append("where id=? and pw=? \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpass"));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userDto = new UserDto(); //그래서 일치하는게 있으면 넣으려고 여기서 new함
				userDto.setId(rs.getString("id"));
				userDto.setName(rs.getString("name"));
				userDto.setIsManager(rs.getString("is_manager"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		
		return userDto;
	}

	@Override
	public UserDto getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modify(UserDto userDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
