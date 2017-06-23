package com.hannoon.search.model;

import org.json.simple.JSONObject;

import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.Engine;

public class SearchResultCafeDto extends SearchResultDto {
	private String hostLink;
	private String hostName;

	public String getHostName() {
		return hostName;
	}

	public void setHostName(String hostName) {
		this.hostName = hostName;
	}

	public SearchResultCafeDto(Engine engineType) {
		super(engineType);
	}

	public String getHostLink() {
		return hostLink;
	}

	public void setHostLink(String hostLink) {
		this.hostLink = hostLink;
	}
	
	@Override
	public void setField(JSONObject item) {
		super.setField(item);
		
		if(engineType == SearchConstance.Engine.NAVER){
			hostLink = (String) item.get(SearchConstance.NaverResult.CAFE_URL);
			hostName = (String) item.get(SearchConstance.NaverResult.CAFE_NAME);
		} else {
			hostLink = (String) item.get(SearchConstance.DaumResult.CAFE_URL_2);
			hostName = (String) item.get(SearchConstance.DaumResult.CAFE_NAME_2);
		}
	}

	@Override
	public String toString() {
		StringBuilder toString = new StringBuilder(super.toString());
		
		toString.append("hostLink : " + hostLink + "\n");
		toString.append("hostName : " + hostName + "\n");
		toString.append("------------------------------------------\n");
		
		return toString.toString();
	}
}
