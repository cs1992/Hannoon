package com.hannoon.search.dao;

import java.util.List;
import java.util.Map;

import com.hannoon.search.model.SearchLogDto;

public interface SearchDao {
	int updateHit(Map<String, String> map);
	
	List<SearchLogDto> searchKeyword(String keyword);
	

	List<SearchLogDto> getKeywordRank();
}
