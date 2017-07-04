package com.hannoon.study.service;

import java.util.List;

import com.hannoon.study.model.StudyGleDto;



public interface StudyService {
	int writeArticle(StudyGleDto studyDto); //회원가입이랑 다를거 없음.
	int StudyRoomName(String studyName, String id );
	StudyGleDto getArticle(int seq); // 글 하나 얻어오기 
	List<StudyGleDto> listArticle(String id); // 리스트
	int replyArticle(StudyGleDto studyDto); // 답글
	int modifyArticle(StudyGleDto studyDto); // 수정
	int deleteArticle(int seq); // 지우기
}
