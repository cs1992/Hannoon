package com.hannoon.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.search.model.SearchLogDto;
import com.hannoon.search.service.SearchHannoonServiceImpl;
import com.hannoon.util.ConstanceValue;
import com.hannoon.util.Encoding;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;

/**
 * Servlet implementation class SearchKeywordFindController
 */
@WebServlet("/keywordfind")
public class SearchKeywordFindController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private List<SearchLogDto> list;
	
	
	@Override
	public void init() throws ServletException {
		super.init();
	}
       
    public SearchKeywordFindController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String first = Encoding.isoToUtf(request.getParameter("first"));
		String keyword = Encoding.isoToUtf(request.getParameter("keyword"));
//		System.out.println(keyword + ", " + first);
		Log.log("keyword : " + keyword + ", first : " + first);
		String result = "";
		if("first".equals(first)){
//			System.out.println("db얻어와라!!!!!!!");
			list = SearchHannoonServiceImpl.getSearchHannoonService().searchKeyword(keyword);
			
			int len = list.size();
			result = len + "|";
			for(int i = 0; i < len; i++){
				SearchLogDto searchLogDto = list.get(i);
				result += searchLogDto.getKeyword();
				
				if(i < len - 1){
					result += ",";
				}
			}
		
		} else {
			int len = list.size();
			List<String> resultList = new ArrayList<>();
			for(int i = 0; i < len; i++){
				String kw = list.get(i).getKeyword();
				if(kw.toUpperCase().startsWith(keyword.toUpperCase())){
					resultList.add(kw);
				}
			}
			
			len = resultList.size();
			result = len + "|";
			for(int i = 0; i < len; i++){
				result += resultList.get(i);
				
				if(i < len - 1){
					result += ",";
				}
			}
		}
		Log.log(result);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(result);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
