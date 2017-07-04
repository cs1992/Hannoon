package com.hannoon.board.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.board.model.NoticeBoardDto;
import com.hannoon.board.service.NoticeBoardServiceImpl;

public class NoticeBoardListAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<NoticeBoardDto> list = NoticeBoardServiceImpl.getNoticeBoardService().noticeListView();
		request.setAttribute("noticeListView",list);
		
		return "/board/notice/list.jsp";
	}
	
}
