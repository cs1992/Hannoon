package com.hannoon.board.dao;

import java.util.List;

import com.hannoon.board.model.NoticeBoardDto;

public interface NoticeBoardDao {

	List<NoticeBoardDto> noticeListView();
	
}
