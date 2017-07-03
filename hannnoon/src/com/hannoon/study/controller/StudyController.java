package com.hannoon.study.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.websocket.Session;

import com.hannoon.study.model.StudyRoomDto;
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
			System.out.println("여기오냐");
		} else if ("StudyRoom".equals(act)) {
			String a = request.getParameter("studyname");
			System.out.println(a);
			path = "/study/gle.jsp";
			String studyname = request.getParameter("studyname");
			
			
			PageMove.redirect(path, request, response);
		} else if("".equals(act)) {

		}else {
			
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
