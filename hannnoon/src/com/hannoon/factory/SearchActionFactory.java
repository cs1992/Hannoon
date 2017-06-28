package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.search.action.SearchHannoonAction;
import com.hannoon.search.action.SearchKeywordFindAction;

public class SearchActionFactory {
	private static Action searchHannoonAction;
	private static Action searchKeywordFindAction;

	static {
		searchHannoonAction = new SearchHannoonAction();
		searchKeywordFindAction = new SearchKeywordFindAction();
	}

	public static Action getSearchKeywordFindAction() {
		return searchKeywordFindAction;
	}

	public static Action getSearchHannoonAction() {
		return searchHannoonAction;
	}

}
