package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.admin.action.*;

public class AdminActionFactory {
	private static Action adminUserListAction;
	private static Action adminBlackListAction;

	static {
		adminUserListAction = new AdminUserListAction();
		adminBlackListAction = new AdminBlackListAction();
	}
	
	public static Action getAdminUserListAction() {
		return adminUserListAction;
	}
	
	public static Action getAdminBlackListAction() {
		return adminBlackListAction;
	}
	
}
