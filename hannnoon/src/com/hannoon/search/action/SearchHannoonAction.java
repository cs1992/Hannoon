package com.hannoon.search.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSpinnerUI;

import com.hannoon.action.Action;
import com.hannoon.search.model.SearchResultDto;
import com.hannoon.search.model.SearchResultListDto;
import com.hannoon.search.service.SearchHannoonService;
import com.hannoon.search.service.SearchHannoonServiceImpl;
import com.hannoon.util.Encoding;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;

public class SearchHannoonAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String keyword = Encoding.isoToEuc(request.getParameter(SearchConstance.KEYWROD));
		Log.log("search action keyworkd : " + keyword);
		SearchResultListDto listDto = SearchHannoonServiceImpl.getSearchHannoonService().searchHannoon(keyword);
		
		request.setAttribute(SearchConstance.SEARCH_RESULT_LIST, listDto);
		
		return SearchConstance.SEARCH_RESULT_PATH;
	}

}
