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
				if("idsave".equals(idsv)){//���̵����� üũ
	//				System.out.println("�Ƶ�������");
					Cookie cookie = new Cookie("kid_sid", id);//�տ�""�� ��⸦ ����ų �� �ִ� �̸��̾�.
					cookie.setMaxAge(60*60*24*365);
					cookie.setPath(root);
					
					response.addCookie(cookie);
				} else {//���̵����� üũx
					Cookie cookie[] = request.getCookies();
					if(cookie != null){ //�׻� nullüũ �Ұ�!
						int len = cookie.length;
						for(int i=0; i<len; i++){
							if("kid_sid".equals(cookie[i].getName())) { //�ش��ϴ� ��Ű�� ������
								cookie[i].setMaxAge(0); //�ִ� ���� 0���̴�? �ٷ� �׾��!
								cookie[i].setPath(root); //������ ��� path �����ؾߵ�
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
				
				path = "/index.jsp"; //�̰� �ϴ� ����
	//			request.setAttribute("loginInfo", userDto); //�̰� �ʱ�ȭ�� //session�ؼ� ���ʿ���
			}
		} else {			
			path = "/user/login/loginfail.jsp";				
		}
		
		return path;
	}

}
