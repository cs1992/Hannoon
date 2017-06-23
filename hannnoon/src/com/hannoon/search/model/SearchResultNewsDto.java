package com.hannoon.search.model;

import org.json.simple.JSONObject;

import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.Engine;

public class SearchResultNewsDto extends SearchResultDto {
	private String hostLink;
	private String postDate;

	public SearchResultNewsDto(Engine engineType) {
		super(engineType);
	}
	
	public String getHostLink() {
		return hostLink;
	}

	public void setHostLink(String hostLink) {
		this.hostLink = hostLink;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	
	@Override
	public void setField(JSONObject item) {
		super.setField(item);
		
		hostLink = (String) item.get(SearchConstance.NaverResult.ORIGINAL_LINK);
		postDate = (String) item.get(SearchConstance.NaverResult.PUB_DATE);
	}
	
	@Override
	public String toString() {
		StringBuilder toString = new StringBuilder(super.toString());
		
		toString.append("hostLink : " + hostLink + "\n");
		toString.append("postDate : " + postDate + "\n");
		toString.append("------------------------------------------\n");
		
		return toString.toString();
	}

}
