package com.hannoon.search.service;

import java.util.List;

import com.hannoon.search.model.*;

public interface SearchHannoonService {
	List<SearchResultBlogDto> searchBlog(String keyword);
	List<SearchResultCafeDto> searchCafe(String keyword);
	List<SearchResultImageDto> searchImage(String keyword);
	List<SearchResultInTipDto> searchInTip(String keyword);
	List<SearchResultNewsDto> searchNews(String keyword);
	List<SearchResultProfDto> searchProf(String keyword);
	List<SearchResultWebDto> searchWeb(String keyword);
	List searchHannoon(String keyword);
	String search(String keyword);
}
