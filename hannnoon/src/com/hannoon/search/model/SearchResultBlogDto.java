package com.hannoon.search.model;

public class SearchResultBlogDto extends SearchResultDto {
	private String author;
	private String hostLink;
	private String postDate;

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

}
