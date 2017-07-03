package com.hannoon.study.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.study.service.StudyService;
import com.hannoon.study.service.StudyServiceImpl;
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
		if ("menu".equals(act)) {
			path = "/study/roomself.jsp";
			response.setContentType("text/plain;charset=EUC-KR");
			PageMove.redirect(path, request, response);
		} else if ("StudyRoom".equals(act)) {
			String a = request.getParameter("studyname");
			System.out.println(a);
			path = "/study/gle.jsp";
			String studyname = request.getParameter("studyname");
			int count = StudyServiceImpl.getStudyServiceImpl().StudyRoomName(studyname);
			PageMove.redirect(path, request, response);
		} else {

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
