package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.user.action.*;

public class UserActionFactory {
	private static Action userLoginAction;
	private static Action userJoinAction;
	private static Action userIdSearchAction;
	private static Action userZipSearchAction;

	static {
		userLoginAction = new UserLoginAction();
		userJoinAction = new UserJoinAction();	
		userIdSearchAction = new UserIdSearchAction();
		userZipSearchAction = new UserZipSearchAction();
	}
	
	public static Action getUserLoginAction() {
		return userLoginAction;
	}
	
	public static Action getUserJoinAction() {
		return userJoinAction;
	}	
	
	public static Action getUserIdSearchAction() {
		return userIdSearchAction;
	}
	
	public static Action getUserZipSearchAction() {
		return userZipSearchAction;
	}
	
}
