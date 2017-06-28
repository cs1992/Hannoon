package com.hannoon.study.dao;

import java.sql.*;
import java.util.List;

import com.hannoon.study.model.StudyGleDto;
import com.hannoon.study.model.StudyRoomDto;
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudyGleDto> listArticle(int bcode, int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
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
	public int StudyRoomName(String studyName) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int cnt = 0;
		
		try {
			conn = DBConnection.getConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert into study_room(part_code, id, study_code, study_name)  \n");
			sql.append("values (0, 'admin', 1, ?)  \n");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, studyName);
			System.out.println("스터디네임 ");
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return cnt;
	}

}
