package com.hannoon.user.dao;

import java.sql.*;
import java.util.*;

import com.hannoon.user.model.UserDto;
import com.hannoon.user.model.ZipDto;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

public class UserDaoImpl implements UserDao {

	@Override
	public int idcheck(String id) {
		int count = 1; //0���� �ָ� ���������� id�˻� �ؼ� ������ �˰� ����� �� �ֵ��� �߱� ������ 1�� �ʱ�ȭ ����
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql = "select count(id) \n";
			sql += "from user_info \n";
			sql += "where id=?";
			
			pstmt = conn.prepareStatement(sql);
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
	public List<ZipDto> zipSearch(String dong) {
		List<ZipDto> list = new ArrayList<ZipDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
	        String sql = "";
	        sql += "select substr(zipcode, 1, instr(zipcode, '-') -1) zip1, \n";
	        sql += "   substr(zipcode, instr(zipcode, '-') +1) zip2, \n";
			sql += "   sido, gugun, dong, nvl(bunji, ' ') bunji \n";
			sql += "   from zipcode\n";
			sql += "   where dong like '%'||?||'%' \n";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dong);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				ZipDto zip = new ZipDto();
				zip.setZip1(rs.getString("zip1"));
				zip.setZip2(rs.getString("zip2"));
				zip.setSido(rs.getString("sido"));
				zip.setGugun(rs.getString("gugun"));
				zip.setDong(rs.getString("dong"));
				zip.setBunji(rs.getString("bunji"));
				
				list.add(zip);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public int register(UserDto userDto) {
		int cnt = 0; //�������� ��ΰ� �ƴ� �̻� �� �ȵǴ°ɷ� ������! �������ΰ�!
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = DBConnection.getConnection();

			String sql = "";
			sql += "insert all \n";
			sql += "	into user_info(id, school_code, part_code, pw, name, tel1, tel2, tel3, email1, email2, zip1, zip2, addr1, addr2, birth1, birth2, birth3, is_manager) \n";
			sql += "	values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0) \n";
			sql += "select * from dual \n";
			
			pstmt = conn.prepareStatement(sql);
			int idx = 0; //�׳� 1,2,..�� �־��ָ� ���߿� �����ٲ�ų� ������ �ϳ��ϳ� �ٲ����ߵǼ� ������ 
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
		
		return cnt; //�׻� �̰� ���� �ٲٰ� �߰� ���� ä���
	}

	@Override
	public UserDto login(Map<String, String> map) {
		UserDto userDto = null; //���⼭ �Ϻη� new���� id, pw ��ġ�Ҷ� ��������
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			
			String sql = "";
			sql += "select id, name, part_id \n";
			sql += "from user_info \n";
			sql += "where id=? and pw=? \n";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpass"));
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userDto = new UserDto(); //�׷��� ��ġ�ϴ°� ������ �������� ���⼭ new��
				userDto.setId(rs.getString("id"));
				userDto.setName(rs.getString("name"));
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
