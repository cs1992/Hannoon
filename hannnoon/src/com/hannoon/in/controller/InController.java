package com.hannoon.in.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.interceptor.SlowQueryReport.QueryStats;

import com.hannoon.factory.AdminActionFactory;
import com.hannoon.factory.BoardActionFactory;
import com.hannoon.util.*;

@WebServlet("/hannoonin")
public class InController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		
		int gcode = NumberCheck.nullToZero(request.getParameter("gcode"));
		int pg = NumberCheck.nullToOne(request.getParameter("pg"));
		String key = Encoding.nullToBlank(request.getParameter("key"));
		String word = request.getParameter("word");
		
		if(request.getMethod().equals("GET"))
			word = Encoding.isoToEuc(word);
		
		String queryString = "?gcode=" + gcode + "&pg=" + pg + "&key=" + key + "&word=" + Encoding.urlFormat(word);
		String path = "/index.jsp";
		
		if("write".equals(act)){
			path = "/in/question.jsp" + queryString;
			PageMove.redirect(path, request, response);
		} else if("list".equals(act)){
			path = BoardActionFactory.getNoticeBoardListAction().execute(request, response);
			path += queryString;
			PageMove.forward(path, request, response);
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(ConstanceValue.DEFAULT_CHAR_SET);
		doGet(request, response);
	}

}
