package com.hannoon.board.service;

import com.hannoon.util.PageNavigation;

public interface CommonService {

	int getNextSeq(); //글번호 얻기
	PageNavigation makePageNavigation(int bcode, int pg, String key, String word, int listSize);
	
}
