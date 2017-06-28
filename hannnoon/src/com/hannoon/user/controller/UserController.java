package com.hannoon.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.hannoon.user.service.UserService;
import com.hannoon.user.service.UserServiceImpl;
import com.hannoon.factory.UserActionFactory;
import com.hannoon.user.model.*;
import com.hannoon.util.Encoding;
import com.hannoon.util.PageMove;

@WebServlet("/user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
//		System.out.println("act ===== " + act);
		
		String path = "/user/userindex.jsp";
		boolean flag = false;
		if("mvjoin".equals(act)) {
			path =  "/user/join/user.jsp";
			PageMove.redirect(path, request, response);
		} else if("mvlogin".equals(act)) {
			path =  "/user/login/login.jsp";		
			PageMove.redirect(path, request, response);
		} else if("idsearch".equals(act)) {
			path = UserActionFactory.getUserIdSearchAction().execute(request, response);
			PageMove.redirect(path, request, response);
		} else if("mvzip".equals(act)) {
			path =  "/user/join/zipsearch.jsp";								
			PageMove.redirect(path, request, response);
		} else if("zipsearch".equals(act)) {
			path = UserActionFactory.getUserZipSearchAction().execute(request, response);
			PageMove.forward(path, request, response);
		} else if("join".equals(act)) {
			path = UserActionFactory.getUserJoinAction().execute(request, response);
			PageMove.forward(path, request, response);
		} else if("login".equals(act)) {
			path = UserActionFactory.getUserLoginAction().execute(request, response);
			PageMove.forward(path, request, response);
		} else if("logout".equals(act)) {
			HttpSession session = request.getSession();
//			session.setAttribute("loginInfo", null); //�̰Ŵ� ���� ���� ����̾�
//			session.removeAttribute("loginInfo"); //Ư�� �Ӽ��� �����Ҷ� ���
			session.invalidate(); //�����ؾߵ� session�� �մ� ��� ������ �������� (���� �� ���ﶧ ���)
			//�� 3���� ����߿� ���� �´� ���� ��� ��� �Ұ�.
			path = "/user/login/loginok.jsp";
			PageMove.redirect(path, request, response);
		} else if("mvmodify".equals(act)) {
			path = "/user/join/modify.jsp";
			PageMove.forward(path, request, response);
		} else if("".equals(act)) {
			
		} else if("".equals(act)) {
			
		} else if("maillist".equals(act)) {
			path = "/mail/maillist.jsp";
			PageMove.redirect(path, request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request, response);
	}

}
