package com.hannoon.in.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.in.model.InDto;
import com.hannoon.in.service.CommonServiceImpl;
import com.hannoon.in.service.InServiceImpl;
import com.hannoon.util.*;

public class InListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int gcode = NumberCheck.nullToZero(request.getParameter("gcode"));
		int pg = NumberCheck.nullToOne(request.getParameter("pg"));
		String key = Encoding.nullToBlank(request.getParameter("key"));
		String word = Encoding.isoToEuc(request.getParameter("word"));

		List<InDto> list = InServiceImpl.getInService().listArticle(gcode, pg, key, word);
		request.setAttribute("listArticle", list);
		
		PageNavigation pageNavigation = CommonServiceImpl.getCommonService().makePageNavigation(gcode, pg, key, word, ConstanceValue.LIST_SIZE);
		pageNavigation.setRoot(request.getContextPath());
		pageNavigation.setNavigator();
		request.setAttribute("navigator", pageNavigation);
			
		return "/hannoonin/hannooninmain.jsp";
	}

}
