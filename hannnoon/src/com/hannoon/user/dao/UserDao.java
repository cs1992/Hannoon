package com.hannoon.user.dao;

import java.util.List;
import java.util.Map;

import com.hannoon.user.model.UserDto;

public interface UserDao {

	int idcheck(String id);
	int register(UserDto userDto); //insert
	
	UserDto login(Map<String, String> map);
	
	UserDto getMember(String id); //보여주기인가?
	int modify(UserDto userDto); //update
	int delete(String id); //delete
	
}
