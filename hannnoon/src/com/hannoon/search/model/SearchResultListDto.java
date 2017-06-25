package com.hannoon.search.model;

import java.util.ArrayList;

public class SearchResultListDto {
	private ArrayList<SearchResultBlogDto> blogList;
	private ArrayList<SearchResultCafeDto> cafeList;
	private ArrayList<SearchResultDicDto> dicList;
	private ArrayList<SearchResultImageDto> imageList;
	private ArrayList<SearchResultInTipDto> inTipList;
	private ArrayList<SearchResultNewsDto> newsList;
	private ArrayList<SearchResultProfDto> profList;
	private ArrayList<SearchResultWebDto> webList;
	private ArrayList<SearchResultDto> defaultList;

	public SearchResultListDto() {
		blogList = new ArrayList<>();
		cafeList = new ArrayList<>();
		dicList = new ArrayList<>();
		imageList = new ArrayList<>();
		inTipList = new ArrayList<>();
		newsList = new ArrayList<>();
		profList = new ArrayList<>();
		webList = new ArrayList<>();
		defaultList = new ArrayList<>();
	}

	public ArrayList<SearchResultDto> getDefaultList() {
		return defaultList;
	}

	public void setDefaultList(ArrayList<SearchResultDto> defaultList) {
		this.defaultList = defaultList;
	}

	public ArrayList<SearchResultBlogDto> getBlogList() {
		return blogList;
	}

	public void setBlogList(ArrayList<SearchResultBlogDto> blogList) {
		this.blogList = blogList;
	}

	public ArrayList<SearchResultCafeDto> getCafeList() {
		return cafeList;
	}

	public void setCafeList(ArrayList<SearchResultCafeDto> cafeList) {
		this.cafeList = cafeList;
	}

	public ArrayList<SearchResultDicDto> getDicList() {
		return dicList;
	}

	public void setDicList(ArrayList<SearchResultDicDto> dicList) {
		this.dicList = dicList;
	}

	public ArrayList<SearchResultImageDto> getImageList() {
		return imageList;
	}

	public void setImageList(ArrayList<SearchResultImageDto> imageList) {
		this.imageList = imageList;
	}

	public ArrayList<SearchResultInTipDto> getInTipList() {
		return inTipList;
	}

	public void setInTipList(ArrayList<SearchResultInTipDto> inTipList) {
		this.inTipList = inTipList;
	}

	public ArrayList<SearchResultNewsDto> getNewsList() {
		return newsList;
	}

	public void setNewsList(ArrayList<SearchResultNewsDto> newsList) {
		this.newsList = newsList;
	}

	public ArrayList<SearchResultProfDto> getProfList() {
		return profList;
	}

	public void setProfList(ArrayList<SearchResultProfDto> profList) {
		this.profList = profList;
	}

	public ArrayList<SearchResultWebDto> getWebList() {
		return webList;
	}

	public void setWebList(ArrayList<SearchResultWebDto> webList) {
		this.webList = webList;
	}

}
