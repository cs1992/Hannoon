package com.hannoon.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hannoon.user.service.UserService;
import com.hannoon.user.service.UserServiceImpl;
import com.hannoon.user.model.*;
import com.hannoon.util.Encoding;

@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserService userService;
	
	public void init() {
		userService = new UserServiceImpl();
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		
		String path = "/user/userindex.jsp";
		boolean flag = false;
		if("mvjoin".equals(act)) {
			path =  "/user/join/user.jsp";
		} else if("mvlogin".equals(act)) {
			path =  "/user/login/login.jsp";		
		} else if("mvidck".equals(act)) {
			path =  "/user/join/idcheck.jsp";					
		} else if("mvzip".equals(act)) {
			path =  "/user/join/zipsearch.jsp";								
		} else if("idsearch".equals(act)) {
			String sid = request.getParameter("id");
			int count = userService.idcheck(sid);
			path = "/user/join/idcheckresult.jsp?sid=" + sid + "&count=" + count;
		} else if("zipsearch".equals(act)) {
			String sdong = Encoding.isoToEuc(request.getParameter("dong"));
			System.out.println("검색동 : " + sdong);
			List<ZipDto> list = userService.zipSearch(sdong);
			System.out.println("검색동 갯수 : " + list.size());
			path = "/user/join/zipsearch.jsp";
			request.setAttribute("sdong", sdong);
			request.setAttribute("zipList", list);
			flag = true;
		} else if("register".equals(act)) {
			System.out.println("usercontroller");
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
			int cnt = userService.register(userDto);
			if(cnt != 0) {			
				path = "/user/join/joinok.jsp";
				request.setAttribute("userInfo", userDto);
				flag = true;
			} else {
				path = "/user/join/joinfail.jsp";
			}
		} else if("login".equals(act)) {
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			UserDto userDto = userService.login(id, pass); //이거모지
			if(userDto != null) {
				
				String idsv = request.getParameter("idsv");
				//////////////cookie///////////////
				if("idsave".equals(idsv)){//아이디저장 체크
					System.out.println("아디저장해");
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
				session.setAttribute("loginInfo", userDto);
				//////////////session///////////////
				
				path = "/user/login/loginok.jsp"; //이거 하는 순간
//				request.setAttribute("loginInfo", userDto); //이거 초기화됨 //session해서 안필요함
				flag = true;
			} else {
				path = "/user/login/loginfail.jsp";				
			}
		} else if("logout".equals(act)) {
			HttpSession session = request.getSession();
//			session.setAttribute("loginInfo", null); //이거는 좋지 않은 방법이야
//			session.removeAttribute("loginInfo"); //특정 속성을 제거할때 사용
			session.invalidate(); //조심해야되 session에 잇는 모든 정보를 날릴꺼면 (전부 다 지울때 사용)
			//위 3가지 방법중에 때에 맞는 제거 방법 사용 할것.
			path = "/user/login/loginok.jsp";
		} else if("mvmodify".equals(act)) {
			path = "/user/join/modify.jsp";
		} else if("".equals(act)) {
			
		} else if("".equals(act)) {
			
		} else if("maillist".equals(act)) {
			path = "/mail/maillist.jsp";
		}
		
		if(flag) { //내용 같이 넘길때 바구니!
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		} else { //그냥 페이지 넘길때			
			response.sendRedirect(root + path);
		}
		
		
		
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request, response);
	}

}
