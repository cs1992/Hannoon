package com.hannoon.admin.service;

import java.util.List;

import com.hannoon.admin.dao.AdminDaoImpl;
import com.hannoon.user.model.UserDto;

public class AdminServiceImpl implements AdminService {

	private static AdminService adminService;

	static {
		adminService = new AdminServiceImpl();
	}
	
	private AdminServiceImpl() {}
	
	public static AdminService getAdminService() {
		return adminService;
	}
	
	@Override
	public List<UserDto> userListView() {
		return AdminDaoImpl.getAdminDao().userListView();
	}

}
