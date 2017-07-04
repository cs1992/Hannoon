package com.hannoon.user.service;

import java.util.List;

import com.hannoon.user.model.UserDto;

public interface UserService {

	int idcheck(String id);
	int join(UserDto userDto); //insert
	
	UserDto login(String id, String pass);
	
	UserDto getUser(String id); //보여주기인가?
	int modify(UserDto userDto); //update
	int delete(String id); //delete
	
}
