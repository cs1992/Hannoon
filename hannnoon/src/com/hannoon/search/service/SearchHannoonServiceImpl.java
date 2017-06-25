package com.hannoon.search.service;

import java.util.List;
import java.util.Vector;

import com.hannoon.search.SearchEngine;
import com.hannoon.search.SearchServiceThreadPool;
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
		StringBuilder result = new StringBuilder();
		Log.log("search service : " + keyword);
		SearchResultListDto listDto = new SearchResultListDto();
		new SearchServiceThreadPool(keyword, listDto).startSearch();
		
		Log.log("Final Result : " + listDto.getBlogList().size());
		
		return listDto;
	}


}
