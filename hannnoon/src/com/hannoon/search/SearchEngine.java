package com.hannoon.search;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

import com.hannoon.search.model.SearchResultDto;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.Engine;
import com.hannoon.util.SearchConstance.SearchName;

public class SearchEngine implements Callable<List> {
	
	private String query;
	private Engine engineType;
	private SearchName searchName;
	private String apiUrl;
	private HttpURLConnection con;
	private URL url;
	private BufferedReader br;
	private StringBuilder result;
	private SearchResultParsing resultParse;
	// private ArrayList<SearchResultDto>

	public SearchEngine(String query, Engine engineType, SearchName searchName) {
		try {
			this.query = URLEncoder.encode(query, "utf-8");
			this.engineType = engineType;
			this.searchName = searchName;
			 resultParse = new SearchResultParsing(result, searchName, engineType);

			if (this.engineType == SearchConstance.Engine.NAVER) {
				apiUrl = SearchConstance.NAVER_URL[searchName.value] + query;
			} else {
				apiUrl = SearchConstance.DAUM_URL[searchName.value] == "" ? null : SearchConstance.DAUM_URL[searchName.value] + query;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public List getResult() {
		
		return null;
	}

	private void setCon() {
		try {
			if(apiUrl == null){
				return;
			}
			url = new URL(apiUrl);
			con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");

			if (engineType == SearchConstance.Engine.NAVER) {
				Log.log("isNaver Engine");
				con.setRequestProperty("X-Naver-Client-Id", SearchConstance.NAVER_API_ID);
				con.setRequestProperty("X-Naver-Client-Secret", SearchConstance.NAVER_API_SECRET);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List call() throws Exception {
		setCon();
		Log.log("apiURL : " + apiUrl);
		if(apiUrl == null){
			return null;
		}
		try {
			int responseCode = con.getResponseCode();
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
//				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
//				br = new BufferedReader(new InputStreamReader(con.getInputStream(), "ISO-8859-1"));
			} else { // 에러 발생
				Log.log("SearchEngine Error");
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
				return null;
			}
			String inputLine;
			result = new StringBuilder();
			while ((inputLine = br.readLine()) != null) {
				result.append(inputLine);
			}
			br.close();
			resultParse.setResult(result);
		} catch (IOException e) {
			e.printStackTrace();
		}

		return resultParse.getResultList();
	}

}
