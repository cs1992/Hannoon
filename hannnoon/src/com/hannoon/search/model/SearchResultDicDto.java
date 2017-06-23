package com.hannoon.search.model;

import org.json.simple.JSONObject;

import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.Engine;

public class SearchResultDicDto extends SearchResultDto {
	private String thumbNail;

	public SearchResultDicDto(Engine engineType) {
		super(engineType);
	}
	
	public String getThumbNail() {
		return thumbNail;
	}

	public void setThumbNail(String thumbNail) {
		this.thumbNail = thumbNail;
	}
	
	@Override
	public void setField(JSONObject item) {
		super.setField(item);
		
		thumbNail = (String) item.get(SearchConstance.NaverResult.THUMB_NAIL);
	}

	@Override
	public String toString() {
		StringBuilder toString = new StringBuilder(super.toString());
		
		toString.append("thumbNail : " + thumbNail + "\n");
		toString.append("------------------------------------------\n");
		
		return toString.toString();
	}
}
