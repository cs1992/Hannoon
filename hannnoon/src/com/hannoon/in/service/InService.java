package com.hannoon.in.service;

import java.util.List;


import com.hannoon.in.model.InDto;


public interface InService {
	
	int writeArticle(InDto inDto);
	InDto getArticle(int gseq);
	List<InDto> listArticle(int gcode, int pg, String key, String word);
	int replyArticle(InDto inDto);
	
	int modifyArticle(InDto inDto);
	int deleteArticle(int gseq);

}
