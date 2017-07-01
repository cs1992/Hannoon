package com.hannoon.search.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.factory.SearchActionFactory;
import com.hannoon.search.model.SearchLogDto;
import com.hannoon.search.service.SearchHannoonServiceImpl;
import com.hannoon.util.SearchConstance;

public class SearchKeywordRankAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<SearchLogDto> list = new ArrayList<>();
		
		list = SearchHannoonServiceImpl.getSearchHannoonService().getKeywordRank();
		request.setAttribute("rank", list);
		
		return SearchConstance.SEARCH_KEYWORD_RANK_PATH;
	}

}
