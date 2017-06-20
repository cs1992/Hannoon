package com.hannoon.factory;

import com.hannoon.action.Action;
import com.hannoon.search.action.SearchHannoonAction;

public class SearchActionFactory {
	private static Action searchHannoonAction;
	
	static {
		searchHannoonAction = new SearchHannoonAction();
	}

	public static Action getSearchHannoonAction() {
		return searchHannoonAction;
	}
	
	
}
