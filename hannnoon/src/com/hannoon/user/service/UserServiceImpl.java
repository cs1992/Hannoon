package com.hannoon.user.service;

import java.util.*;

import com.hannoon.user.dao.UserDao;
import com.hannoon.user.dao.UserDaoImpl;
import com.hannoon.user.model.UserDto;
import com.hannoon.user.model.ZipDto;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	
	public UserServiceImpl() {
		userDao = new UserDaoImpl();
	}

	@Override
	public int idcheck(String id) {
		return userDao.idcheck(id);
	}

	@Override
	public List<ZipDto> zipSearch(String dong) {
		return userDao.zipSearch(dong);
	}

	@Override
	public int register(UserDto userDto) {
		return userDao.register(userDto);
	}

	@Override
	public UserDto login(String id, String pass) {
		Map<String, String> map = new HashMap<String, String>();

		map.put("userid", id);
		map.put("userpass", pass);
		//""안에 id, pass 로 해도 되는데 일부러 ueser붙여서 다르게 해봄
		return userDao.login(map);
	}

	@Override
	public UserDto getUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modify(UserDto userDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
