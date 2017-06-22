package com.hannoon.search.model;

public class SearchResultNewsDto extends SearchResultDto {
	private String hostLink;
	private String postDate;

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

}
