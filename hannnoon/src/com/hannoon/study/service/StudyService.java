package com.hannoon.study.service;

import java.util.List;

import com.hannoon.study.model.StudyDto;



public interface StudyService {
	int writeArticle(StudyDto studyDto); //회원가입이랑 다를거 없음.
	StudyDto getArticle(int seq); // 글 하나 얻어오기 
	List<StudyDto> listArticle(int bcode, int pg, String key, String word); // 리스트
	int replyArticle(StudyDto studyDto); // 답글
	
	int modifyArticle(StudyDto studyDto); // 수정
	int deleteArticle(int seq); // 지우기
}
