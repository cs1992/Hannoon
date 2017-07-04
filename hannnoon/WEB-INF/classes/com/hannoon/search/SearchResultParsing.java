package com.hannoon.search;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.hannoon.search.model.*;
import com.hannoon.util.SearchConstance;
import com.hannoon.util.SearchConstance.DaumResult;
import com.hannoon.util.SearchConstance.Engine;
import com.hannoon.util.SearchConstance.NaverResult;
import com.hannoon.util.SearchConstance.SearchName;

public class SearchResultParsing {
	private JSONParser parser;
	private JSONObject object;
	private StringBuilder result;
	private JSONArray jsonArray;
	private SearchName searchName;
	private SearchResultDto resultDto;
	private Engine engineType;
	private List list;

	public SearchResultParsing(SearchName searchName, Engine engineType) {

		this.engineType = engineType;
		this.searchName = searchName;
		parser = new JSONParser();

		setList();

	}

	private void setDto() {
		switch (searchName) {
		case BLOG:
			resultDto = new SearchResultBlogDto(engineType);
			break;
		case CAFE:
			resultDto = new SearchResultCafeDto(engineType);
			break;
		case DIC:
			resultDto = new SearchResultDicDto(engineType);
			break;
		case IMAGE:
			resultDto = new SearchResultImageDto(engineType);
			break;
		case IN_TIP:
			resultDto = new SearchResultInTipDto(engineType);
			break;
		case NEWS:
			resultDto = new SearchResultNewsDto(engineType);
			break;
		case PROF:
			resultDto = new SearchResultProfDto(engineType);
			break;
		case WEB:
			resultDto = new SearchResultWebDto(engineType);
			break;
		default:
			resultDto = new SearchResultDto(engineType);
//			System.out.println("SearchResultParsing default Type");
			break;
		}
	}

	private void setList() {
		switch (searchName) {
		case BLOG:
			list = new ArrayList<SearchResultBlogDto>();
			break;
		case CAFE:
			list = new ArrayList<SearchResultCafeDto>();
			break;
		case DIC:
			list = new ArrayList<SearchResultDicDto>();
			break;
		case IMAGE:
			list = new ArrayList<SearchResultImageDto>();
			break;
		case IN_TIP:
			list = new ArrayList<SearchResultInTipDto>();
			break;
		case NEWS:
			list = new ArrayList<SearchResultNewsDto>();
			break;
		case PROF:
			list = new ArrayList<SearchResultProfDto>();
			break;
		case WEB:
			list = new ArrayList<SearchResultWebDto>();
			break;
		default:
			list = new ArrayList<SearchResultDto>();
//			System.out.println("SearchResultParsing default Type");
		}

	}

	public SearchResultParsing(StringBuilder result, SearchName searchName, Engine engineType) {
		this(searchName, engineType);
		this.result = result;
	}

	public void setResult(StringBuilder result) {
		this.result = result;
		try {
			object = (JSONObject) parser.parse(result.toString());
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public List getResultList() {

		if (engineType == Engine.NAVER) {
			jsonArray = (JSONArray) object.get(NaverResult.ITEMS);
		} else {
			JSONObject temp = (JSONObject) object.get(DaumResult.CHANNEL);
			jsonArray = (JSONArray) temp.get(DaumResult.ITEM);
		}

		makeResultList();

		return list;
	}

	public void makeResultList() {
		int size = jsonArray.size();
		JSONObject tempObj;

		for (int i = 0; i < size; i++) {
			tempObj = (JSONObject) jsonArray.get(i);
			setDto();
			resultDto.setPriority((size + 1) - i);
			resultDto.setField(tempObj);
			list.add(resultDto);
		}
	}

}
