package com.hannoon.study.service;

import java.util.List;

import com.hannoon.study.model.StudyGleDto;



public interface StudyService {
	int writeArticle(StudyGleDto studyDto); //ȸ�������̶� �ٸ��� ����.
	int StudyRoomName(String studyName, String id );
	StudyGleDto getArticle(int seq); // �� �ϳ� ������ 
	List<StudyGleDto> listArticle(String id); // ����Ʈ
	int replyArticle(StudyGleDto studyDto); // ���
	int modifyArticle(StudyGleDto studyDto); // ����
	int deleteArticle(int seq); // �����
}
