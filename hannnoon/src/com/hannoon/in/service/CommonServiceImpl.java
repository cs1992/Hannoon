package com.hannoon.in.service;

import java.util.HashMap;
import java.util.Map;

import com.hannoon.in.dao.CommonDaoImpl;
import com.hannoon.in.dao.InDaoImpl;
import com.hannoon.util.ConstanceValue;
import com.hannoon.util.PageNavigation;

public class CommonServiceImpl implements CommonService{
	
	private static CommonService commonService;
	
	static{
		commonService = new CommonServiceImpl();
	}
	
	private CommonServiceImpl(){}
	
	public static CommonService getCommonService(){
		return commonService;
	}
	
	@Override
	public PageNavigation makePageNavigation(int gcode, int pg, String key, String word, int listSize) {
		PageNavigation pageNavigation = new PageNavigation();
		int newArticleCount = InDaoImpl.getInDao().newArticleCount(gcode);
		pageNavigation.setNewArticleCount(newArticleCount);
		Map<String, String> map = new HashMap<String, String>();
		map.put("gcode", gcode + "");
		map.put("key", key);
		map.put("word", word);
		int totalArticleCount = InDaoImpl.getInDao().totalArticleCount(map);
		pageNavigation.setTotalArticleCount(totalArticleCount);
//		int totalPageCount = totalArticleCount % listSize == 0 ? totalArticleCount / listSize : totalArticleCount / listSize + 1;
		int totalPageCount = (totalArticleCount - 1) / listSize + 1;
		pageNavigation.setTotalPageCount(totalPageCount);
		pageNavigation.setNowFirst(pg <= ConstanceValue.PAGE_SIZE);
		pageNavigation.setNowEnd((totalPageCount - 1) / ConstanceValue.PAGE_SIZE * ConstanceValue.PAGE_SIZE < pg);
		pageNavigation.setPageNo(pg);		
		return pageNavigation;
	}

	@Override
	public int getNextGseq() {
		return CommonDaoImpl.getCommonDao().getNextGseq();
	}

}
