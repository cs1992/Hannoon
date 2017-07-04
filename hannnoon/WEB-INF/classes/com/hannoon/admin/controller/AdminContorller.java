package com.hannoon.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.factory.AdminActionFactory;
import com.hannoon.util.PageMove;
import com.hannoon.util.Encoding;
import com.hannoon.util.NumberCheck;


@WebServlet("/admin")
public class AdminContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String act = request.getParameter("act");
		
		String bid = request.getParameter("bid"); //블랙리스트 처리 할 id 받음
		
		String id = Encoding.isoToEuc(request.getParameter("id"));
		int pg = NumberCheck.nullToOne(request.getParameter("pg")); //페이지번호가 0이 나올수가 없음
		String key = Encoding.nullToBlank(request.getParameter("key"));
		String word = Encoding.isoToEuc(request.getParameter("word"));
		
		String queryString = "?id=" + id + "&pg=" + pg + "&key=" + key + "&word=" + Encoding.urlFormat(word); 
		
		String path = "/admin/manageuser/index";
		if("list".equals(act)) {
			path = AdminActionFactory.getAdminUserListAction().execute(request, response);
			path += queryString;
			PageMove.forward(path, request, response);
		} else if("blacklist".equals(act)) {
			path = AdminActionFactory.getAdminBlackListAction().execute(request, response);
			PageMove.forward(path, request, response);
		} else if("".equals(act)) {
			
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request, response);
	}

}
