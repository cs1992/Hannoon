package com.hannoon.search.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.factory.SearchActionFactory;
import com.hannoon.util.ConstanceValue;
import com.hannoon.util.Log;
import com.hannoon.util.PageMove;
import com.hannoon.util.SearchConstance;

/**
 * Servlet implementation class SearchController
 */
@WebServlet(ConstanceValue.SEARCH_CONTROLLER)
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Log.log("SearchController::doGet");
		String searchType = request.getParameter(SearchConstance.SEARCH_TYPE_PARAM);
		Log.log(searchType);
		
		String path = "/index.jsp";
		
		if(SearchConstance.HANNOON.equals(searchType)){
			path = SearchActionFactory.getSearchHannoonAction().execute(request, response);
			PageMove.forward(path, request, response);
		} else if("".equals("")){
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(ConstanceValue.DEFAULT_CHAR_SET);
		doGet(request, response);
	}

}
