package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.admin.action.AdminUserListAction;

public class AdminActionFactory {
	private static Action adminUserListAction;

	static {
		adminUserListAction = new AdminUserListAction();
	}
	
	public static Action getAdminUserListAction() {
		return adminUserListAction;
	}
	
}
