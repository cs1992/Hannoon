package com.hannoon.board.service;

import java.util.HashMap;
import java.util.Map;

import com.hannoon.board.dao.CommonDaoImpl;
import com.hannoon.util.ConstanceValue;
import com.hannoon.util.PageNavigation;

//singleton pattern ����
//1. private ������
//2. static ���� ����.
//3. static{} ��ü ����.
//4. �ڽ��� �����ϴ� get method����
public class CommonServiceImpl implements CommonService { //����Բ� �׳� �ϴ� ������ �����ſ���

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
		
//		pageNavigation.setRoot(root); //���⼭ ����  reboardlistaction���� �ؾߵ�
		int newArticleCount = CommonDaoImpl.getCommonDao().newArticleCount(bcode);
		pageNavigation.setNewArticleCount(newArticleCount);
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", bcode + "");
		map.put("key", key);
		map.put("word", word);
		int totalArticleCount = CommonDaoImpl.getCommonDao().totalArticleCount(map);
		pageNavigation.setTotalArticleCount(totalArticleCount);
//		int totalPageCount = totalArticleCount%listSize == 0 ? totalArticleCount/listSize : totalArticleCount/listSize+1;//����ؼ� ����  db���� �����°� �ƴ�
		int totalPageCount = (totalArticleCount - 1) / listSize + 1;
		pageNavigation.setTotalPageCount(totalPageCount);
		pageNavigation.setNowFirst(pg <= ConstanceValue.PAGE_SIZE);
		pageNavigation.setNowEnd((totalPageCount - 1) / ConstanceValue.PAGE_SIZE * ConstanceValue.PAGE_SIZE < pg);
		pageNavigation.setPageNo(pg);
//		pageNavigation.setNavigator(); //���� ���� ������ (��Ʈ ���� �Ѵ�����) �ؾߵ�
		return pageNavigation;
	}

}
