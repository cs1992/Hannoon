package com.hannoon.admin.service;

import java.util.List;

import com.hannoon.user.model.UserDto;
import com.hannoon.util.UserListPageNavigation;

public interface AdminService {

	List<UserDto> userListView(String id, int pg, String key, String word); //유저 리스트 뿌리기
	
	int userBlackList(String bid); //blacklist 처리하기
	
	String getNextId(); //다음 아이디 얻기
	UserListPageNavigation makePageNavigation(String id, int pg, String key, String word, int listSize);
	
}
