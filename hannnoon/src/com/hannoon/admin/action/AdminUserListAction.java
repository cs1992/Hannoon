package com.hannoon.admin.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.admin.service.AdminServiceImpl;
import com.hannoon.user.model.UserDto;

public class AdminUserListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<UserDto> list = AdminServiceImpl.getAdminService().userListView();
		request.setAttribute("userList", list);
				
		return "/admin/manageuser/userlist.jsp";
	}

}
