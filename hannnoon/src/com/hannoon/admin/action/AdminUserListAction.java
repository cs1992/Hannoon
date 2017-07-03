package com.hannoon.admin.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.admin.service.AdminServiceImpl;
import com.hannoon.user.model.UserDto;
import com.hannoon.util.*;


public class AdminUserListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = Encoding.isoToEuc(request.getParameter("id"));
		int pg = NumberCheck.nullToOne(request.getParameter("pg")); //페이지번호가 0이 나올수가 없음
		String key = Encoding.nullToBlank(request.getParameter("key"));
		String word = Encoding.isoToEuc(request.getParameter("word"));
		
		//글목록
		List<UserDto> list = AdminServiceImpl.getAdminService().userListView(id,pg,key,word);
		request.setAttribute("userList", list);
		
		//페이징처리
		UserListPageNavigation userListPageNavigation = AdminServiceImpl.getAdminService().makePageNavigation(id, pg, key, word, ConstanceValue.LIST_SIZE);
		userListPageNavigation.setRoot(request.getContextPath());
		userListPageNavigation.setNavigator();
		request.setAttribute("navigator", userListPageNavigation); //바구니에 담아서 보내기
				
		return "/admin/manageuser/userlist.jsp";
	}

}
