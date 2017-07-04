package com.hannoon.in.dao;

import java.util.Map;

public interface CommonDao {
	int getNextGseq();
	void updateHit(int gseq);
	int newArticleCount(int gcode);
	int totalArticleCount(Map<String, String> map);
}
