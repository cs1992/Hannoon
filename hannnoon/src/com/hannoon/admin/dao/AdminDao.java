package com.hannoon.admin.dao;

import java.util.List;
import java.util.Map;

import com.hannoon.user.model.UserDto;

public interface AdminDao {

//	회원리스트 보기
	List<UserDto> userListView(Map<String, String> map);

//	회원리스트 
	String getNextId();
	int totalArticleCount(Map<String, String> map);
}
