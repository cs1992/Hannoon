package com.hannoon.study.service;

import java.util.List;

import com.hannoon.study.dao.StudyDao;
import com.hannoon.study.model.StudyGleDto;

public class StudyServiceImpl implements StudyService {
	private static StudyService StudyServiceImpl;
	
	public static void setStudyServiceImpl(StudyService studyServiceImpl) {
		StudyServiceImpl = studyServiceImpl;
	}

	public static StudyService getStudyServiceImpl() {
		return StudyServiceImpl;
	}

	static { // static 블록 초기화 
		StudyServiceImpl =new StudyServiceImpl(); // 3. static으로 하면 모든 프로젝트를 통틀어서 하나의 객체만 만들어짐 ( singleton pattern )
	}
	@Override
	public int writeArticle(StudyGleDto studyDto) {
		
		return 0;
	}

	@Override
	public StudyGleDto getArticle(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudyGleDto> listArticle(String id) {
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
	public int StudyRoomName(String studyName, String id) {
		// TODO Auto-generated method stub
		return StudyDao.getStudyDao().StudyRoomName(studyName, id);
	}

}
