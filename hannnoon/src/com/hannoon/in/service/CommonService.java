package com.hannoon.in.service;

import com.hannoon.util.PageNavigation;

public interface CommonService {
	
	int getNextGseq();
	PageNavigation makePageNavigation(int gcode, int pg, String key, String word, int listSize);
}
