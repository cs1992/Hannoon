package com.hannoon.study.dao;

import java.util.List;

import com.hannoon.study.model.StudyGleDto;

public interface StudyInterface {
	int writeArticle(StudyGleDto studyDto); //ȸ�������̶� �ٸ��� ����.
	int StudyRoomName(String studyName);
	StudyGleDto getArticle(int seq); // �� �ϳ� ������ 
	List<StudyGleDto> listArticle(int bcode, int pg, String key, String word); // ����Ʈ
	int replyArticle(StudyGleDto studyDto); // ���
	int modifyArticle(StudyGleDto studyDto); // ����
	int deleteArticle(int seq); // �����
}
