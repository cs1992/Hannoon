package com.hannoon.admin.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.admin.service.AdminServiceImpl;

public class AdminBlackListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "";
		
		String bid = request.getParameter("bid");
		int cnt = AdminServiceImpl.getAdminService().userBlackList(bid);
		path = "/admin?act=list";
		
		return path;
	}

}
