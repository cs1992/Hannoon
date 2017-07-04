package com.hannoon.search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import com.hannoon.search.SearchEngine;
import com.hannoon.search.SearchServiceThreadPool;
import com.hannoon.search.dao.SearchDaoImpl;
import com.hannoon.search.model.*;
import com.hannoon.util.Encoding;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;

public class SearchHannoonServiceImpl implements SearchHannoonService {
	private static SearchHannoonService searchHannoonService;

	static {
		searchHannoonService = new SearchHannoonServiceImpl();
	}

	public static SearchHannoonService getSearchHannoonService() {
		return searchHannoonService;
	}

	private SearchHannoonServiceImpl() {
	}

	@Override
	public SearchResultListDto searchHannoon(String keyword) {
		Log.log("search service : " + keyword);
		SearchResultListDto listDto = new SearchResultListDto(); // 전체 검색 결과를 넣을 DTO
		new SearchServiceThreadPool(keyword, listDto).startSearch();
		
		Log.log("Final Result : " + listDto.getBlogList().size());
		
		return listDto;
	}

	@Override
	public int updateHit(String keyword, String id) {
		Map<String, String> map = new HashMap<>();
		map.put(SearchConstance.USER_ID, id);
		map.put(SearchConstance.KEYWROD, keyword);
		Log.log("searchservice updatehit : " + keyword + ", " + id);
		return SearchDaoImpl.getSearchDao().updateHit(map);
	}

	@Override
	public List<SearchLogDto> searchKeyword(String keyword) {
		return SearchDaoImpl.getSearchDao().searchKeyword(keyword);
	}

	@Override
	public List<SearchLogDto> getKeywordRank() {
		return SearchDaoImpl.getSearchDao().getKeywordRank();
	}


}
