package com.hannoon.search;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.hannoon.search.model.SearchResultDto;
import com.hannoon.search.model.SearchResultListDto;
import com.hannoon.util.Log;
import com.hannoon.util.SearchConstance.Engine;
import com.hannoon.util.SearchConstance.SearchName;

import sun.util.logging.resources.logging;

public class SearchServiceThreadPool {
	private String query;
	private ExecutorService executor;
	private SearchEngine engine;
	private SearchResultListDto listDto;
	
	public SearchServiceThreadPool(String query, SearchResultListDto listDto){
		try {
			this.query = URLEncoder.encode(query, "utf-8");
			this.listDto = listDto;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.executor = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
		System.out.println(Runtime.getRuntime().availableProcessors());
	}
	
	public SearchResultListDto startSearch(){
		
		List<SearchResultDto> naverResult = null;
		List<SearchResultDto> daumResult = null;
		ArrayList<SearchResultDto> mergeResult = null;
		try {
			for(SearchName searchName : SearchName.values()){
				System.out.println(searchName);
				for(Engine engineType : Engine.values()){
					System.out.println(engineType);
					engine = new SearchEngine(query, engineType, searchName);
					if(engineType == Engine.NAVER){
						naverResult = new ArrayList<>();
						naverResult = executor.submit(engine).get();
						if(naverResult != null){
//							Log.log(naverResult.toString());
							
						}
					} else {
						daumResult = new ArrayList<>();
						daumResult = executor.submit(engine).get();
						if(daumResult != null){
//							Log.log(daumResult.toString());
							
						}
					}				
				}
				
				mergeResult = selectMergeList(searchName);
				if(naverResult != null && daumResult != null){
					mergeListDto(mergeResult, naverResult, daumResult);
				} else if(naverResult != null){
					mergeResult.addAll(naverResult);
				}
				
				
				Log.log("Merge Result Size : " + mergeResult.size());
				Collections.sort(mergeResult);
				Log.log(mergeResult.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		
		return listDto;
	}
	
	private ArrayList selectMergeList(SearchName searchName){
		ArrayList select = listDto.getDefaultList();
		
		switch(searchName){
		case BLOG:
			select = listDto.getBlogList();
			break;
		case CAFE:
			select = listDto.getCafeList();
			break;
		case DIC:
			select = listDto.getDicList();
			break;
		case IMAGE:
			select = listDto.getImageList();
			break;
		case IN_TIP:
			select = listDto.getInTipList();
			break;
		case NEWS:
			select = listDto.getNewsList();
			break;
		case PROF:
			select = listDto.getProfList();
			break;
		case WEB:
			select = listDto.getWebList();
			break;
			default:
		}
		return select;
	}
	
	private void mergeListDto(ArrayList<SearchResultDto> mergeList, List<SearchResultDto> naverList, List<SearchResultDto> daumList){
		int naverSize = naverList.size();
		int daumSize = daumList.size();
		int minSize, maxSize;
		List<SearchResultDto> minList, maxList;
		if(naverSize >= daumSize){
			minSize = daumSize;
			maxSize = naverSize;
			maxList = naverList;
			minList = daumList;
		} else {
			minSize = naverSize;
			maxSize = daumSize;
			maxList = daumList;
			minList = naverList;
		}
		
		SearchResultDto maxDto;
		SearchResultDto minDto;
		boolean isSame;
		List<Integer> sameList = new LinkedList<>();
		for(int i = 0; i < maxSize; i++){
			isSame = false;
			maxDto = maxList.get(i);
			for(int j = 0; j < minSize; j++){
				minDto = minList.get(j);
				if(maxDto.getOriginLink().equals(minDto.getOriginLink())){
					Log.log(maxDto.getTitle() + "SAME !!!");
					maxDto.setPriority(maxDto.getPriority() + minDto.getPriority());
					mergeList.add(maxDto);
					sameList.add(j);
					isSame = true;
					break;
				}
			}
			if(!isSame){
				mergeList.add(maxList.get(i));
			}
		}
		
		for(int i = 0; i < minSize; i++){
			if(!sameList.contains(i)){
				mergeList.add(minList.get(i));
			}
		}
		
	}
}
