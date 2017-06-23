package com.hannoon.search.service;

import java.util.List;
import java.util.Vector;

import com.hannoon.search.SearchEngine;
import com.hannoon.search.SearchServiceThreadPool;
import com.hannoon.search.model.*;
import com.hannoon.util.Encoding;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;

public class SearchHannoonServiceImpl implements SearchHannoonService {
	private static SearchHannoonService searchHannoonService;

	static {
		searchHannoonService = new SearchHannoonServiceImpl();
	}

	public static SearchHannoonService getSearchHannoonService() {
		return searchHannoonService;
	}

	private SearchHannoonServiceImpl() {
	}

	@Override
	public List searchHannoon(String keyword) {
		
		return null;
	}

	@Override
	public List<SearchResultBlogDto> searchBlog(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SearchResultCafeDto> searchCafe(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SearchResultImageDto> searchImage(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SearchResultInTipDto> searchInTip(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SearchResultNewsDto> searchNews(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SearchResultProfDto> searchProf(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<SearchResultWebDto> searchWeb(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String search(String keyword) {
		StringBuilder result = new StringBuilder();
		Log.log("search service : " + keyword);
		SearchResultListDto listDto = new SearchResultListDto();
		
		new SearchServiceThreadPool(keyword, listDto).startSearch();
		
		
//		Thread blogSearch = new Thread(){
//			@Override
//			public void run() {
//				super.run();
//				SearchResultListDto listDto = new SearchResultListDto();
//				System.out.println(new SearchServiceThreadPool(keyword, listDto).startSearch());
////				System.out.println(new SearchEngine(keyword, SearchConstance.Engine.NAVER, SearchConstance.SearchName.BLOG).getResult().toString());
//			}
//		};
//		blogSearch.start();
//		try {
//			blogSearch.join();
//		} catch (InterruptedException e) {
//			e.printStackTrace();
//		}
		
		return result.toString();
	}
	

}
