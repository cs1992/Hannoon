package com.hannoon.board.service;

import java.util.HashMap;
import java.util.Map;

import com.hannoon.board.dao.CommonDaoImpl;
import com.hannoon.util.ConstanceValue;
import com.hannoon.util.PageNavigation;

//singleton pattern 적용
//1. private 생성자
//2. static 변수 선언.
//3. static{} 객체 생성.
//4. 자신을 리턴하는 get method생성
public class CommonServiceImpl implements CommonService { //강사님꺼 그냥 일단 가져다 놓은거에염

	private static CommonService commonService;
	
	static {
		commonService = new CommonServiceImpl();
	}

	private CommonServiceImpl() {}
	
	public static CommonService getCommonService() {
		return commonService;
	}
	
	@Override
	public int getNextSeq() {
		return CommonDaoImpl.getCommonDao().getNextSeq();
	}

	@Override
	public PageNavigation makePageNavigation(int bcode, int pg, String key, String word, int listSize) {
		PageNavigation pageNavigation = new PageNavigation();
		
//		pageNavigation.setRoot(root); //여기서 못해  reboardlistaction에서 해야되
		int newArticleCount = CommonDaoImpl.getCommonDao().newArticleCount(bcode);
		pageNavigation.setNewArticleCount(newArticleCount);
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", bcode + "");
		map.put("key", key);
		map.put("word", word);
		int totalArticleCount = CommonDaoImpl.getCommonDao().totalArticleCount(map);
		pageNavigation.setTotalArticleCount(totalArticleCount);
//		int totalPageCount = totalArticleCount%listSize == 0 ? totalArticleCount/listSize : totalArticleCount/listSize+1;//계산해서 얻어옴  db에서 얻어오는거 아님
		int totalPageCount = (totalArticleCount - 1) / listSize + 1;
		pageNavigation.setTotalPageCount(totalPageCount);
		pageNavigation.setNowFirst(pg <= ConstanceValue.PAGE_SIZE);
		pageNavigation.setNowEnd((totalPageCount - 1) / ConstanceValue.PAGE_SIZE * ConstanceValue.PAGE_SIZE < pg);
		pageNavigation.setPageNo(pg);
//		pageNavigation.setNavigator(); //모든게 끝난 다음에 (루트 설정 한다음에) 해야되
		return pageNavigation;
	}

}
