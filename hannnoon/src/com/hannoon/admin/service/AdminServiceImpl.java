package com.hannoon.admin.service;

import java.util.*;

import com.hannoon.admin.dao.AdminDaoImpl;
import com.hannoon.user.model.UserDto;
import com.hannoon.util.*;
import com.hannoon.util.ConstanceValue;

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
	public List<UserDto> userListView(String id, int pg, String key, String word) {
		int end = pg * ConstanceValue.LIST_SIZE;
		int start = end - ConstanceValue.LIST_SIZE;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("key", key);
		map.put("word", word);
		map.put("start", start +"");
		map.put("end", end + "");
		return AdminDaoImpl.getAdminDao().userListView(map);
	}

	@Override
	public String getNextId() {
		return AdminDaoImpl.getAdminDao().getNextId();
	}

	@Override
	public UserListPageNavigation makePageNavigation(String id, int pg, String key, String word, int listSize) {
		UserListPageNavigation pageNavigation = new UserListPageNavigation();
		
//		pageNavigation.setRoot(root); //여기서 못해  reboardlistaction에서 해야되
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("key", key);
		map.put("word", word);
		int totalArticleCount = AdminDaoImpl.getAdminDao().totalArticleCount(map);
		pageNavigation.setTotalArticleCount(totalArticleCount);
//		int totalPageCount = totalArticleCount%listSize == 0 ? totalArticleCount/listSize : totalArticleCount/listSize+1;//계산해서 얻어옴  db에서 얻어오는거 아님
		int totalPageCount = (totalArticleCount - 1) / listSize + 1;
		pageNavigation.setTotalPageCount(totalPageCount);
		pageNavigation.setNowFirst(pg <= ConstanceValue.PAGE_SIZE);
		pageNavigation.setNowEnd((totalPageCount - 1) / ConstanceValue.PAGE_SIZE * ConstanceValue.PAGE_SIZE < pg);
		pageNavigation.setPageNo(pg);
//		pageNavigation.setNavigator(); //모든게 끝난 다음에 (루트 설정 한다음에) 해야되
		return pageNavigation;
	}

}
