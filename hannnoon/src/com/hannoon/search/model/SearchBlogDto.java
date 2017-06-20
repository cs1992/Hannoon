package com.hannoon.search.model;

public class SearchBlogDto {
	private String title;
	private String postDate;
	private String link;
	private String description;
	private String author;
	private String blogerLink;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getBlogerLink() {
		return blogerLink;
	}

	public void setBlogerLink(String blogerLink) {
		this.blogerLink = blogerLink;
	}

}
