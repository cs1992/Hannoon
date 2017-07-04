package com.hannoon.admin.service;

import java.util.List;

import com.hannoon.user.model.UserDto;
import com.hannoon.util.UserListPageNavigation;

public interface AdminService {

	List<UserDto> userListView(String id, int pg, String key, String word); //���� ����Ʈ �Ѹ���
	
	int userBlackList(String bid); //blacklist ó���ϱ�
	
	String getNextId(); //���� ���̵� ���
	UserListPageNavigation makePageNavigation(String id, int pg, String key, String word, int listSize);
	
}
