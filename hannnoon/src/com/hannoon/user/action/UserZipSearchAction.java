package com.hannoon.user.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.user.model.ZipDto;
import com.hannoon.user.service.UserServiceImpl;
import com.hannoon.util.Encoding;

public class UserZipSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "";
		
		String sdong = Encoding.isoToEuc(request.getParameter("dong"));
		System.out.println("검색동 : " + sdong);
		List<ZipDto> list = UserServiceImpl.getUserService().zipSearch(sdong);
		System.out.println("검색동 갯수 : " + list.size());
		path = "/user/join/zipsearch.jsp";
		request.setAttribute("sdong", sdong);
		request.setAttribute("zipList", list);
		
		return path;
	}

}
