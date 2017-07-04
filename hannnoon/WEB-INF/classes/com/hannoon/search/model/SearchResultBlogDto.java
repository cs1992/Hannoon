package com.hannoon.search.model;

import org.json.simple.JSONObject;

import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.Engine;

public class SearchResultBlogDto extends SearchResultDto {
	private String author;
	private String hostLink;
	private String postDate;
	
	public SearchResultBlogDto(Engine engineType) {
		super(engineType);
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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
		if(engineType == SearchConstance.Engine.NAVER) {
			author = (String) item.get(SearchConstance.NaverResult.BLOGGER_NAME);
			hostLink = (String) item.get(SearchConstance.NaverResult.BLOGGER_LINK);
			postDate = (String) item.get(SearchConstance.NaverResult.POST_DATE);
			
		} else {
			author = (String) item.get(SearchConstance.DaumResult.AUTHOR);
			hostLink = (String) item.get(SearchConstance.DaumResult.COMMENT);
			postDate = ((String) item.get(SearchConstance.DaumResult.PUB_DATE)).substring(0, 8);
		}
		
		postDate = postDate.substring(0, 4) + "." + postDate.substring(4, 6) + "." + postDate.substring(6, 8);
	}
	
	@Override
	public String toString() {
		StringBuilder toString = new StringBuilder(super.toString());
		
		toString.append("author : " + author + "\n");
		toString.append("hostLink : " + hostLink + "\n");
		toString.append("postDate : " + postDate + "\n");
		toString.append("------------------------------------------\n");
		
		return toString.toString();
	}

}
