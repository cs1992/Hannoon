package com.hannoon.util;

public class SearchConstance {
	public final static String SEARCH_TYPE_PARAM = "search_type";
	public final static String SEARCH_NAME_PARAM = "search_name";

	public final static String SEARCH_RESULT_PATH = "/search/testresult.jsp";

	public final static String HANNOON = "hannoon";
	public final static String KEYWROD = "keyword";
	public final static String SEARCH_RESULT_LIST = "searchResultList";
	
	public final static String DAUM_API_KEY = "e1abe1edf7880a35d933a0fae69548f9";
	public final static String NAVER_API_ID ="eSez1gcGAZUzO3T_T4MR";
	public final static String NAVER_API_SECRET = "kEYHr3ZNAd";
	
	public final static String USER_INFO = "userInfo";
	public final static String USER_ID = "id";
	

	public final static int DISPLAY_COUNT = 20;
	public final static int SEARCH_NAME_MAX = 8;
	
	public static enum Engine {
		NAVER(0), DAUM(1);
		
		public int value;
		
		Engine (int value){
			this.value = value;
		}
	}
	
	public static enum SearchResultPath{
		WEB("/search/webresult.jsp"), BLOG("/search/blogresult.jsp"), CAFE("/search/caferesult.jsp"), DIC("/search/dicresult.jsp"), IMAGE("/search/imageresult.jsp"), IN_TIP("/search/intipresult.jsp"), NEWS("/search/newsresult.jsp"), PROF("/search/profresult.jsp"), ALL("/search/testresult.jsp"), HANGLE("/search/hangleresult.jsp"), HANNOON_IN("/search/hannooninresult.jsp");
		
		public String path;
		
		SearchResultPath(String path){
			this.path = path;
		}
	}
	
	public static enum SearchName {
		WEB(0), BLOG(1), CAFE(2), DIC(3), IMAGE(4), IN_TIP(5), NEWS(6), PROF(7);
		
		public int value;
		
		
		SearchName(int value){
			this.value = value;
		}
		
		
	}
	
	public static enum SearchType{
		WEB(0), BLOG(1), CAFE(2), DIC(3), IMAGE(4), IN_TIP(5), NEWS(6), PROF(7), ALL(8), HANGLE(9), HANNOON_IN(10);
		public int value;	
		
		SearchType(int value){
			this.value = value;
		}
	}
	
//	public final static String[] ENGINE = {"NAVER", "DAUM"};
//	public final static String[] SEARCH_NAME = {"WEB", "BLOg", "CAFE", "DIC", "IMAGE", "IN_TIP", "NEWS", "PROF"};
//
//	public class Engine {
//		public final static int NAVER = 0;
//		public final static int DAUM = 1;
//	}
//
//	public class SearchName {
//		public final static int WEB = 0;
//		public final static int BLOG = 1;
//		public final static int CAFE = 2;
//		public final static int DIC = 3;
//		public final static int IMAGE = 4;
//		public final static int IN_TIP = 5;
//		public final static int NEWS = 6;
//		public final static int PROF = 7;
//
//	}	

	public final static String[] NAVER_URL = { 
			"https://openapi.naver.com/v1/search/webkr?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/blog?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/cafearticle?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/encyc?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/image?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/kin?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/news?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/doc?display=" + DISPLAY_COUNT + "&query="

	};
	public final static String[] DAUM_URL = { 
			"https://apis.daum.net/search/web?output=json&sort=accu&result=" + DISPLAY_COUNT + "&apikey=" + DAUM_API_KEY + "&q=",
			"https://apis.daum.net/search/blog?output=json&sort=accu&result=" + DISPLAY_COUNT + "&apikey=" + DAUM_API_KEY + "&q=",
			"https://apis.daum.net/search/cafe?output=json&sort=accu&result=" + DISPLAY_COUNT + "&apikey=" + DAUM_API_KEY + "&q=",
			"",
			"https://apis.daum.net/search/image?output=json&sort=accu&result=" + DISPLAY_COUNT + "&apikey=" + DAUM_API_KEY + "&q=",
			"https://apis.daum.net/search/knowledge?output=json&sort=accu&result=" + DISPLAY_COUNT + "&apikey=" + DAUM_API_KEY + "&q=",
			"",
			"",
			
	};
	
	public class Result{
		public static final String TITLE = "title";
		public static final String LINK = "link";
		public static final String DESCRIPTION = "description";
		public static final String PUB_DATE = "pubDate";
	}
	
	
	public class NaverResult extends Result {
		public static final String ITEMS = "items";
		public static final String ORIGINAL_LINK = "originallink";
		public static final String BLOGGER_NAME = "bloggername";
		public static final String BLOGGER_LINK = "bloggerlink";
		public static final String POST_DATE = "postdate";
		public static final String THUMB_NAIL = "thumbnail";
		public static final String CAFE_URL = "cafeurl";
		public static final String CAFE_NAME = "cafename";
	}
	
	public class DaumResult extends Result{
		public static final String CHANNEL = "channel";
		public static final String ITEM = "item";
		public static final String AUTHOR = "author";
		public static final String COMMENT = "comment";
		public static final String CAFE_NAME_2 = "cafeName";
		public static final String CAFE_URL_2 = "cafeUrl";
		
	}
	
	
}
