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
		int pg = NumberCheck.nullToOne(request.getParameter("pg")); //��������ȣ�� 0�� ���ü��� ����
		String key = Encoding.nullToBlank(request.getParameter("key"));
		String word = Encoding.isoToEuc(request.getParameter("word"));
		
		//�۸��
		List<UserDto> list = AdminServiceImpl.getAdminService().userListView(id,pg,key,word);
		request.setAttribute("userList", list);
		
		//����¡ó��
		UserListPageNavigation userListPageNavigation = AdminServiceImpl.getAdminService().makePageNavigation(id, pg, key, word, ConstanceValue.LIST_SIZE);
		userListPageNavigation.setRoot(request.getContextPath());
		userListPageNavigation.setNavigator();
		request.setAttribute("navigator", userListPageNavigation); //�ٱ��Ͽ� ��Ƽ� ������
				
		return "/admin/manageuser/userlist.jsp";
	}

}
