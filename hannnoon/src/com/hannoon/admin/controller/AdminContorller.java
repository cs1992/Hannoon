package com.hannoon.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.factory.AdminActionFactory;
import com.hannoon.util.PageMove;


@WebServlet("/admin")
public class AdminContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String act = request.getParameter("act");
		
		String path = "/admin/manageuser/index";
		if("list".equals(act)) {
			path = AdminActionFactory.getAdminUserListAction().execute(request, response);
			PageMove.forward(path, request, response);
		} else if("".equals(act)) {
			
		} else if("".equals(act)) {
			
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request, response);
	}

}
