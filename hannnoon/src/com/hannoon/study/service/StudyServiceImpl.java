package com.hannoon.study.service;

import java.util.List;

import com.hannoon.study.model.StudyDto;

public class StudyServiceImpl implements StudyService {
	private static StudyService StudyServiceImpl;
	
	public static StudyService getStudyServiceImpl() {
		return StudyServiceImpl;
	}

	static { // static ��� �ʱ�ȭ 
		StudyServiceImpl =new StudyServiceImpl(); // 3. static���� �ϸ� ��� ������Ʈ�� ��Ʋ� �ϳ��� ��ü�� ������� ( singleton pattern )
	}
	@Override
	public int writeArticle(StudyDto studyDto) {
		
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
