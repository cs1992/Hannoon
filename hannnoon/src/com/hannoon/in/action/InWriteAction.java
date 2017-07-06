package com.hannoon.in.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.hannoon.action.Action;
import com.hannoon.board.service.CommonServiceImpl;
import com.hannoon.in.dao.CommonDaoImpl;
import com.hannoon.in.model.InDto;
import com.hannoon.in.service.InServiceImpl;
import com.hannoon.user.model.UserDto;
import com.hannoon.util.NumberCheck;

public class InWriteAction implements Action {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();//session ����
		UserDto userDto = (UserDto) session.getAttribute("loginInfo");//session���� MemberDto get
		
		String path = "/index.jsp";
		if(userDto != null) {//�α��� �ߴٸ�.
			int gseq = CommonDaoImpl.getCommonDao().getNextGseq();//�۹�ȣ ���
			
			InDto inDto = new InDto();
			inDto.setGseq(gseq);
			inDto.setId(userDto.getId());
			inDto.setName(userDto.getName());
			inDto.setEmail(userDto.getEmail1() + "@" + userDto.getEmail2());
			inDto.setTitle(request.getParameter("title"));
			inDto.setContent(request.getParameter("content"));
			inDto.setGcode(NumberCheck.nullToZero(request.getParameter("gcode")));
			inDto.setIn_code(gseq);//������ ��� ref(�׷��ȣ)�� seq�� ���Լ���.
			
			int cnt = InServiceImpl.getInService().writeArticle(inDto);
			if(cnt != 0) {
				request.setAttribute("gseq", gseq + "");
				path = "/in/writeok.jsp";
			} else {
				path = "/in/writefail.jsp";
			}
		}	
		return path;
	}

}
