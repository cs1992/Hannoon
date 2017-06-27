package com.hannoon.study.dao;

import java.util.List;

import com.hannoon.study.model.StudyDto;

public interface StudyInterface {
	int writeArticle(StudyDto studyDto); //ȸ�������̶� �ٸ��� ����.
	StudyDto getArticle(int seq); // �� �ϳ� ������ 
	List<StudyDto> listArticle(int bcode, int pg, String key, String word); // ����Ʈ
	int replyArticle(StudyDto studyDto); // ���
	int modifyArticle(StudyDto studyDto); // ����
	int deleteArticle(int seq); // �����
}
