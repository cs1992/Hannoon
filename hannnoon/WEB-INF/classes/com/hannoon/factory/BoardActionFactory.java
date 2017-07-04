package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.board.action.NoticeBoardListAction;
import com.hannoon.in.action.*;

public class BoardActionFactory {
	//공지사항
	private static Action noticeBoardListAction;

	//한눈인
	private static Action inListAction;
	private static Action inWriteAction;
	private static Action inViewAction;
	private static Action inReplyAction;
	private static Action inModifyAction;
	private static Action inDeleteAction;
	
	static {
		noticeBoardListAction = new NoticeBoardListAction();
		inListAction = new InListAction();
		inWriteAction = new InWriteAction();
		inModifyAction = new InModifyAction();
		inDeleteAction = new InDeleteAction();
		inViewAction = new InViewAction();
		inReplyAction = new InReplyAction();
	}

	public static Action getInViewAction() {
		return inViewAction;
	}

	public static Action getInReplyAction() {
		return inReplyAction;
	}

	public static Action getInModifyAction() {
		return inModifyAction;
	}

	public static Action getInDeleteAction() {
		return inDeleteAction;
	}

	public static Action getInWriteAction() {
		return inWriteAction;
	}

	public static Action getNoticeBoardListAction() {
		return noticeBoardListAction;
	}

	public static Action getInListAction() {
		return inListAction;
	}
}
