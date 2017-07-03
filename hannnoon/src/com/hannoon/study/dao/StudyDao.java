package com.hannoon.study.dao;

import java.sql.*;
import java.util.List;

import com.hannoon.study.model.StudyGleDto;
import com.hannoon.study.model.StudyRoomDto;
import com.hannoon.user.model.UserDto;
import com.hannoon.util.db.DBClose;
import com.hannoon.util.db.DBConnection;

import oracle.sql.StructDescriptor;

public class StudyDao implements StudyInterface {
	private static StudyInterface StudyDao;

	public static StudyInterface getStudyDao() {
		return StudyDao;
	}

	static {
		StudyDao = new StudyDao();
	}

	@Override
	public int writeArticle(StudyGleDto studyDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public StudyGleDto getArticle(int seq) {
		return null;
	}

	@Override
	public List<StudyRoomDto> listArticle(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int cnt = 0;
		ResultSet rs = null;
		List<StudyRoomDto> list =  (List<StudyRoomDto>) new StudyRoomDto();

		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select *  \n");
			sql.append("from study_room  \n");
			sql.append("where id= "+id+"");
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.executeUpdate();
			if (rs.next()) {
				StudyRoomDto studyRoom = new StudyRoomDto(); // 그래서 일치하는게 있으면
																// 넣으려고 여기서 new함
				studyRoom.setId(rs.getString("id"));
				studyRoom.setStudy_name(rs.getString("name"));
				studyRoom.setPart_code(rs.getInt("part_code"));
				studyRoom.setShare_id(rs.getInt("share_code"));
				
				list.add(studyRoom);
				System.out.println(studyRoom.getStudy_name());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

		return list;
		
	}

	@Override
	public int replyArticle(StudyGleDto studyDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(StudyGleDto studyDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int StudyRoomName(String studyName, String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int cnt = 0;
		ResultSet rs = null;

		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into study_room(part_code, id, study_code, study_name)  \n");
			sql.append("values (study_code_add, '"+id +"', study_code_add, ?)  \n");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, studyName);

			cnt = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return cnt;
	}

}
