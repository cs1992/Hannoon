package com.hannoon.admin.dao;

import java.util.List;
import java.util.Map;

import com.hannoon.user.model.UserDto;

public interface AdminDao {

//	ȸ������Ʈ ����
	List<UserDto> userListView(Map<String, String> map);

//	ȸ������Ʈ 
	String getNextId();
	int totalArticleCount(Map<String, String> map);
}
