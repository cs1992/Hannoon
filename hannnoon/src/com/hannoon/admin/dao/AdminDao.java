package com.hannoon.admin.dao;

import java.util.List;

import com.hannoon.user.model.UserDto;

public interface AdminDao {

	List<UserDto> userListView();
	
}
