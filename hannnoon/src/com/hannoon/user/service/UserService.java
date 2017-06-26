package com.hannoon.user.service;

import java.util.List;

import com.hannoon.user.model.UserDto;
import com.hannoon.user.model.ZipDto;

public interface UserService {

	int idcheck(String id);
	List<ZipDto> zipSearch(String dong);
	int join(UserDto userDto); //insert
	
	UserDto login(String id, String pass);
	
	UserDto getUser(String id); //보여주기인가?
	int modify(UserDto userDto); //update
	int delete(String id); //delete
	
}
