package com.hannoon.search.model;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.Engine;

public class SearchResultDto implements Comparable<SearchResultDto> {
	protected String title;
	protected String originLink;
	protected String description;
	protected int priority; // 우선순위
	protected Engine engineType; // 네이버냐 다음냐
	
	public SearchResultDto(Engine engineType){
		this.engineType = engineType;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOriginLink() {
		return originLink;
	}

	public void setOriginLink(String originLink) {
		this.originLink = originLink;
	}
	
	public void setField(JSONObject item){
		title = ((String) item.get(SearchConstance.Result.TITLE)).replaceAll("&lt;b&gt;", "<b>");
		title = title.replaceAll("&lt;/b&gt;", "</b>");
		originLink = (String) item.get(SearchConstance.Result.LINK);
		String temp = (String) item.get(SearchConstance.Result.DESCRIPTION);
		
		if(temp != null){
			description = temp.replaceAll("&lt;b&gt;", "<b>");
			description = description.replaceAll("&lt;/b&gt;", "</b>");
			
		}
	}
	
	@Override
	public String toString() {
		StringBuilder toString = new StringBuilder();
		toString.append("title : " + title + "\n");
		toString.append("originLink : " + originLink + "\n");
		toString.append("description : " + description + "\n");
		toString.append("priority : " + priority + "\n");
		return toString.toString();
	}

	@Override
	public int compareTo(SearchResultDto o) {
		return Integer.compare(o.priority, priority); // 0, 1, -1
	}

}
