package com.hannoon.in.dao;

import java.sql.*;
import java.util.*;

import com.hannoon.in.model.InDto;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class InDaoImpl implements InDao{
	
	private static InDao inDao;
	
	static{
		inDao = new InDaoImpl();
	}

	private InDaoImpl(){}
	
	public static InDao getInDao(){
		return inDao;
	}

	@Override
	public List<InDto> listArticle(Map<String, String> map) {
		List<InDto> list = new ArrayList<InDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			StringBuffer sql = new StringBuffer();
			conn = DBConnection.getConnection();
			
			sql.append("select in_code, hin.gle_code, in_type_code, is_choose, id, title, content, hit, date_time \n");
			sql.append("from  hannoon_in hin, board b \n");
			sql.append("where hin.gle_code = b.gle_code \n");
			sql.append("and is_manager = 0");
					
			pstmt = conn.prepareStatement(sql.toString());
			
			while(rs.next()){
				InDto inDto = new InDto();
				inDto.setIn_code(rs.getInt("in_code"));
				inDto.setGle_code(rs.getInt("gle_code"));
				inDto.setIn_type_code(rs.getInt("in_type_code"));
				inDto.setIs_choose(rs.getString("is_choose"));
				inDto.setId(rs.getString("id"));
				inDto.setTitle(rs.getString("title"));
				inDto.setContent(rs.getString("content"));
				inDto.setHit(rs.getInt("hit"));
				inDto.setDate_time(rs.getString("date_time"));
				
				list.add(inDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBClose.close(conn, pstmt, rs);
		}
		
		
		return list;
	}

	@Override
	public int totalArticleCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int writeArticle(InDto inDto) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append("	into hannoon_in (in_code, gle_code, in_Type_code, is_choose) \n");
			sql.append("	values(?, gcode.nextval, ?, ?) \n");
			sql.append("	into board (id, title, content, hit, date_time) \n");
			sql.append("	values (?, ?, ?, ?, sysdate) \n");
			sql.append("select * from dual \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, inDto.getIn_code());
			pstmt.setInt(++idx, inDto.getGcode());
			pstmt.setInt(++idx, inDto.getIn_type_code());
			pstmt.setString(++idx, inDto.getIs_choose());
			pstmt.setString(++idx, inDto.getId());
			pstmt.setString(++idx, inDto.getTitle());
			pstmt.setString(++idx, inDto.getContent());
			pstmt.setInt(++idx, inDto.getHit());
			pstmt.setString(++idx, inDto.getDate_time());
			
			cnt = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return cnt;
	}

	@Override
	public InDto getArticle(int gseq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int newArticleCount(int gcode) {
		// TODO Auto-generated method stub
		return 0;
	}

}
