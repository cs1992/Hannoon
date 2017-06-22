package com.hannoon.search.model;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public abstract class SearchResultDto {
	protected JSONParser jsonParse;
	protected JSONObject jsonObject;
	protected String title;
	protected String originLink;
	protected String description;
	protected int priority;

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

}
