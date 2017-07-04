package com.hannoon.in.dao;

import java.util.List;
import java.util.Map;

import com.hannoon.in.model.InDto;

public interface InDao {
	
	int writeArticle (InDto inDto);
	InDto getArticle (int gseq);
	List<InDto> listArticle(Map<String, String> map);
	int newArticleCount(int gcode);
	int totalArticleCount(Map<String, String> map);
	
}
