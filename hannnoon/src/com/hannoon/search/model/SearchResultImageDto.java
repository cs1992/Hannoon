package com.hannoon.search.model;

public class SearchResultImageDto extends SearchResultDto {
	private String image;
	private String thumbNail;

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getThumbNail() {
		return thumbNail;
	}

	public void setThumbNail(String thumbNail) {
		this.thumbNail = thumbNail;
	}

}
