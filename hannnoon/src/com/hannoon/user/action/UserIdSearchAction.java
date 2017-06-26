package com.hannoon.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.user.service.UserServiceImpl;

public class UserIdSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "";
		
		String sid = request.getParameter("id");
		int cnt = UserServiceImpl.getUserService().idcheck(sid);
		path = "/user/join/idcheckresult.jsp?sid=" + sid + "&count=" + cnt;
		
		return path;
	}

}
