package com.hannoon.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hannoon.action.Action;
import com.hannoon.user.model.UserDto;
import com.hannoon.user.service.UserServiceImpl;

public class UserJoinAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		
		UserDto userDto = new UserDto();
		userDto.setId(request.getParameter("id"));
		userDto.setSchoolCode(Integer.parseInt(request.getParameter("schoolCode")));
		userDto.setPartCode(Integer.parseInt(request.getParameter("partCode")));
		userDto.setPw(request.getParameter("pw"));
		userDto.setName(request.getParameter("name"));
		userDto.setTel1(request.getParameter("tel1"));
		userDto.setTel2(request.getParameter("tel2"));
		userDto.setTel3(request.getParameter("tel3"));
		userDto.setEmail1(request.getParameter("email1"));
		userDto.setEmail2(request.getParameter("email2"));
		userDto.setZip1(request.getParameter("zip1"));
		userDto.setZip2(request.getParameter("zip2"));
		userDto.setAddr1(request.getParameter("addr1"));
		userDto.setAddr2(request.getParameter("addr2"));
		userDto.setBirth1(request.getParameter("birth1"));
		userDto.setBirth2(request.getParameter("birth2"));
		userDto.setBirth3(request.getParameter("birth3"));
		
		int cnt = UserServiceImpl.getUserService().join(userDto);
		
		if(cnt != 0) {			
			request.setAttribute("userInfo", userDto);
			path = "/tip/tip.jsp";
		} else {
			path = "/user/join/joinfail.jsp";
		}
		
		return path;
	}

}
