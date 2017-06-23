package com.hannoon.search.model;

import org.json.simple.JSONObject;

import com.hannoon.util.SearchConstance.Engine;

public class SearchResultInTipDto extends SearchResultDto {
	public SearchResultInTipDto(Engine engineType) {
		super(engineType);
	}
	
	@Override
	public void setField(JSONObject item) {
		super.setField(item);
	}
	
	@Override
	public String toString() {
		StringBuilder toString = new StringBuilder(super.toString());
		
		toString.append("------------------------------------------\n");
		
		return toString.toString();
	}
}
