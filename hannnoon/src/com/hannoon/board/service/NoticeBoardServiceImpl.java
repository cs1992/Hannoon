package com.hannoon.board.service;

import java.util.List;

import com.hannoon.board.dao.NoticeBoardDaoImpl;
import com.hannoon.board.model.NoticeBoardDto;

public class NoticeBoardServiceImpl implements NoticeBoardService{
	
	private static NoticeBoardService noticeBoardService;
	
	static {
		noticeBoardService = new NoticeBoardServiceImpl();
	}
	
	private NoticeBoardServiceImpl() {}
	
	public static NoticeBoardService getNoticeBoardService(){
		return noticeBoardService;
	}
	

	@Override
	public List<NoticeBoardDto> noticeListView() {
		return NoticeBoardDaoImpl.getNoticeBoardDao().noticeListView();
	}

}
