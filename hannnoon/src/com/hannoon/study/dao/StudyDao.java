package com.hannoon.study.dao;

import java.util.List;

import com.hannoon.study.model.StudyDto;
import com.hannoon.util.db.DBConnection;

public class StudyDao implements StudyInterface {
	private static StudyInterface StudyDao;
	
	public static StudyInterface getStudyDao() {
		return StudyDao;
	}

	static{
		StudyDao = new StudyDao();
	}
	
	@Override
	public int writeArticle(StudyDto studyDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public StudyDto getArticle(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudyDto> listArticle(int bcode, int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int replyArticle(StudyDto studyDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(StudyDto studyDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
