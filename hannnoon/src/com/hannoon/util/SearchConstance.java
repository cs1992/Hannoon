package com.hannoon.util;

public class SearchConstance {
	public final static String SEARCH_TYPE_PARAM = "search_type";

	public final static String SEARCH_RESULT_PATH = "/search/result.jsp";

	public final static String HANNOON = "hannoon";
	public final static String KEYWROD = "keyword";
	
	public final static String DAUM_API_KEY = "e1abe1edf7880a35d933a0fae69548f9";
	public final static String NAVER_API_ID ="eSez1gcGAZUzO3T_T4MR";
	public final static String NAVER_API_SECRET = "kEYHr3ZNAd";

	public final static int DISPLAY_COUNT = 20;
	

	public class Engine {
		public final static int NAVER = 0;
		public final static int DAUM = 1;
	}

	public class SearchName {
		public final static int WEB = 0;
		public final static int BLOG = 1;
		public final static int CAFE = 2;
		public final static int DIC = 3;
		public final static int IMAGE = 4;
		public final static int IN_TIP = 5;
		public final static int NEWS = 6;
		public final static int PROF = 7;

	}

	public final static String[] NAVER_URL = { 
			"https://openapi.naver.com/v1/search/webkr?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/blog?display=" + DISPLAY_COUNT + "&query=",
			"https://openapi.naver.com/v1/search/cafeaticle?display=" + DISPLAY_COUNT + "&query=",
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
	
}
