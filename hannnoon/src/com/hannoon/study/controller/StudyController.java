package com.hannoon.study.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.util.PageMove;

@WebServlet("/StudyController")
public class StudyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StudyController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String publicRoot = request.getContextPath();
		String act = request.getParameter("act");
		String path = "/index.jsp";
		if("menu".equals(act)) {
			path= "/study/studyroom.jsp";
			PageMove.redirect(path, request, response);
		}else
			path = "/index.jsp";
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
