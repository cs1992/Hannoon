package com.hannoon.search.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.SynthSpinnerUI;

import com.hannoon.action.Action;
import com.hannoon.search.model.SearchResultDto;
import com.hannoon.search.model.SearchResultListDto;
import com.hannoon.search.service.SearchHannoonService;
import com.hannoon.search.service.SearchHannoonServiceImpl;
import com.hannoon.user.model.UserDto;
import com.hannoon.util.Encoding;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;

public class SearchHannoonAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String keyword = Encoding.isoToEuc(request.getParameter(SearchConstance.KEYWROD)); // 검색어
		String searchName = request.getParameter(SearchConstance.SEARCH_NAME_PARAM); // 검색 유형
		
		HttpSession session = request.getSession();
		UserDto userInfo = (UserDto)session.getAttribute(SearchConstance.USER_INFO);
		
		SearchHannoonServiceImpl.getSearchHannoonService().updateHit(keyword, userInfo.getId()); // 검색 횟수 증가
		Log.log("search action keyworkd : " + keyword + ", " + searchName);

		SearchResultListDto listDto = SearchHannoonServiceImpl.getSearchHannoonService().searchHannoon(keyword); // 실제 검색 (네이버, 다음)
		//listDto.setHangle(SearchHangleServiceImpl.getSEar...search(keyword));
		//listDto.setHannoon(SearchHaoonSer...getSEarch....search(keyword));
		
		/*
		 * title : 키워드가 있느냐, 앞에 있느냐, 몇번있느냐
		 * description : 키워그있느냐, 앞에 있느냐, 몇번있느냐
		 */
		
		
		session.setAttribute(SearchConstance.SEARCH_RESULT_LIST, listDto);
		session.setAttribute(SearchConstance.KEYWROD, keyword);

		return SearchConstance.SearchResultPath.values()[Integer.parseInt(searchName)].path;
	}

}
