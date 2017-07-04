package com.hannoon.board.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.hannoon.board.model.NoticeBoardDto;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

public class NoticeBoardDaoImpl implements NoticeBoardDao{
	
	private static NoticeBoardDao noticeBoardDao;
	
	static{
		noticeBoardDao = new NoticeBoardDaoImpl();
	}
	
	private NoticeBoardDaoImpl(){}
	
	public static NoticeBoardDao getNoticeBoardDao(){
		return noticeBoardDao;
	}
	
	
	@Override
	public List<NoticeBoardDto> noticeListView() {
		List<NoticeBoardDto> list = new ArrayList<NoticeBoardDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			
			sql.append("select n.notice_code, gle_code, b.id, b.title, b.content, b.date_time, \n");
			sql.append("from notice n, board b \n");
			sql.append("where n.gle_code = b.gle_code \n");
			sql.append("and is_manager = 0 \n");
			sql.append("order by date_time \n");
			
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				NoticeBoardDto noticeBoardDto = new NoticeBoardDto();
				noticeBoardDto.setNotice_code(rs.getInt("notice_code"));
				noticeBoardDto.setGle_code(rs.getInt("gle_code"));
				noticeBoardDto.setId(rs.getString("id"));
				noticeBoardDto.setTitle(rs.getString("title"));
				noticeBoardDto.setContent(rs.getString("content"));
				noticeBoardDto.setDate_time(rs.getString("date_time"));
				
				
				list.add(noticeBoardDto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBClose.close(conn, pstmt, rs);
		}
		
		
		return list;
	}
	
	
}
