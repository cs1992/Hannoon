package com.hannoon.in.service;


import java.util.*;

import com.hannoon.in.dao.CommonDaoImpl;
import com.hannoon.in.dao.InDaoImpl;
import com.hannoon.in.model.InDto;
import com.hannoon.util.ConstanceValue;


public class InServiceImpl implements InService{
	
	private static InService inService;
	
	static {
		inService = new InServiceImpl();
	}
	
	private InServiceImpl() {}
	
	public static InService getInService(){
		return inService;
	}

	@Override
	public InDto getArticle(int gseq) {
		CommonDaoImpl.getCommonDao().updateHit(gseq);
		return InDaoImpl.getInDao().getArticle(gseq);
	}

	@Override
	public List<InDto> listArticle(int gcode, int pg, String key, String word) {
		int end = pg * ConstanceValue.LIST_SIZE;
		int start = end - ConstanceValue.LIST_SIZE;
		Map<String, String> map = new HashMap<String, String>();
		map.put("gcode", gcode + "");
		map.put("key", key);
		map.put("word", word);
		map.put("start", start + "");
		map.put("end", end + "");
		return InDaoImpl.getInDao().listArticle(map);
	}

	@Override
	public int writeArticle(InDto inDto) {
		return InDaoImpl.getInDao().writeArticle(inDto);
	}

	@Override
	public int replyArticle(InDto inDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(InDto inDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int gseq) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
