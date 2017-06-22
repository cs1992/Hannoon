package com.hannoon.search;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import com.hannoon.util.SearchConstance;

public class SearchEngine implements Runnable {
	private String query;
	private Thread thread;
	private int engineType;
	private int searchName;
	private String apiUrl;
	private HttpURLConnection con;
	private URL url;
	private BufferedReader br;
	private StringBuilder result;

	public SearchEngine(String query, int engineType, int searchName) {
		this.query = query;
		this.engineType = engineType;
		this.searchName = searchName;
		
		if (this.engineType == SearchConstance.Engine.NAVER) {
			apiUrl = SearchConstance.NAVER_URL[searchName] + query;
		} else {
			apiUrl = SearchConstance.DAUM_URL[searchName] + query;
		}

	}

	public StringBuilder getResult() {
		setCon();
		
		try {
			int responseCode = con.getResponseCode();
			 if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
	            } else {  // 에러 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
			 String inputLine;
			 while((inputLine = br.readLine()) != null){
				 result.append(inputLine);
			 }
			 br.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return result;
	}

	private void setCon() {
		try {
			url = new URL(apiUrl);
			con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");

			if (engineType == SearchConstance.Engine.NAVER) {
				con.setRequestProperty("X-Naver-Client-Id", SearchConstance.NAVER_API_ID);
				con.setRequestProperty("X-Naver-Client-Secret", SearchConstance.NAVER_API_SECRET);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void run() {
		
	}

}
