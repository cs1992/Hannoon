package com.hannoon.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.hannoon.action.Action;
import com.hannoon.user.model.UserDto;
import com.hannoon.user.service.UserServiceImpl;

public class UserLoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		String root = request.getContextPath();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserDto userDto = UserServiceImpl.getUserService().login(id, pw);
		String im = ""; //ismanager?
		if(userDto != null) {
			
			im = userDto.getIsManager();
			
			if(im.equals("2")) {
				path = "/tip/tip_urbl.jsp";
			} else {
				String idsv = request.getParameter("idsv");
				//////////////cookie///////////////
				if("idsave".equals(idsv)){//아이디저장 체크
	//				System.out.println("아디저장해");
					Cookie cookie = new Cookie("kid_sid", id);//앞에""가 쿠기를 가르킬 수 있는 이름이야.
					cookie.setMaxAge(60*60*24*365);
					cookie.setPath(root);
					
					response.addCookie(cookie);
				} else {//아이디저장 체크x
					Cookie cookie[] = request.getCookies();
					if(cookie != null){ //항상 null체크 할것!
						int len = cookie.length;
						for(int i=0; i<len; i++){
							if("kid_sid".equals(cookie[i].getName())) { //해당하는 쿠키가 있으면
								cookie[i].setMaxAge(0); //최대 나이 0살이다? 바로 죽어라!
								cookie[i].setPath(root); //도메인 없어서 path 지정해야되
								response.addCookie(cookie[i]);
								break;
							}
						}
					}
				}
				//////////////cookie///////////////
				
				//////////////session///////////////
				HttpSession session = request.getSession();
				session.setAttribute("userInfo", userDto);
				//////////////session///////////////
				
				path = "/index.jsp"; //이거 하는 순간
	//			request.setAttribute("loginInfo", userDto); //이거 초기화됨 //session해서 안필요함
			}
		} else {			
			path = "/user/login/loginfail.jsp";				
		}
		
		return path;
	}

}
