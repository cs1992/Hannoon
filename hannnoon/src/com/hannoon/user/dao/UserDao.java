package com.hannoon.user.dao;

import java.util.List;
import java.util.Map;

import com.hannoon.user.model.UserDto;
import com.hannoon.user.model.ZipDto;

public interface UserDao {

	int idcheck(String id);
	List<ZipDto> zipSearch(String dong);
	int register(UserDto userDto); //insert
	
	UserDto login(Map<String, String> map);
	
	UserDto getMember(String id); //보여주기인가?
	int modify(UserDto userDto); //update
	int delete(String id); //delete
	
}
