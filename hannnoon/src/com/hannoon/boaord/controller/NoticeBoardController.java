package com.hannoon.boaord.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.factory.AdminActionFactory;
import com.hannoon.factory.BoardActionFactory;

@WebServlet("/noticeboard")
public class NoticeBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		
		String path = "/admin/board/notice";
		if("list".equals(act)){
			path = BoardActionFactory.getNoticeBoardListAction().execute(request, response);
		} else if("".equals(act)) {
			
		} else if("".equals(act)) {
			
		} 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request, response);
	}

}
