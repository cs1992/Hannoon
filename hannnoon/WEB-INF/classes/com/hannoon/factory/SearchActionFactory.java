package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.search.action.SearchHannoonAction;
import com.hannoon.search.action.SearchKeywordRankAction;

public class SearchActionFactory {
	private static Action searchHannoonAction;
	private static Action searchKeywordRankAction;

	static {
		searchHannoonAction = new SearchHannoonAction();
		searchKeywordRankAction = new SearchKeywordRankAction();
	}

	public static Action getSearchKeywordRankAction() {
		return searchKeywordRankAction;
	}

	public static Action getSearchHannoonAction() {
		return searchHannoonAction;
	}

}
