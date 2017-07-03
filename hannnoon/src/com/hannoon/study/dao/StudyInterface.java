package com.hannoon.study.dao;

import java.util.List;

import com.hannoon.study.model.StudyGleDto;
import com.hannoon.study.model.StudyRoomDto;

public interface StudyInterface {
	int writeArticle(StudyGleDto studyDto); //ȸ�������̶� �ٸ��� ����.
	 
	int StudyRoomName(String studyName, String id);
	StudyGleDto getArticle(int seq); // �� �ϳ� ������ 
	List<StudyRoomDto> listArticle(String id); // ����Ʈ
	int replyArticle(StudyGleDto studyDto); // ���
	int modifyArticle(StudyGleDto studyDto); // ����
	int deleteArticle(int seq); // �����
}
