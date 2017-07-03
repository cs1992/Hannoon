package com.hannoon.study.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.hannoon.study.model.StudyRoomDto;
import com.hannoon.study.service.StudyServiceImpl;
import com.hannoon.user.model.UserDto;



public class StudyAddAction {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		StudyRoomDto studyRoomDto = new StudyRoomDto();
		UserDto userDto = new UserDto();
		String studyname = request.getParameter("studyname");
		studyRoomDto.setStudy_name((studyname));
		studyRoomDto.setId(userDto.getId());
		studyRoomDto.setPart_code(Integer.parseInt(request.getParameter("part_code")));
//		studyRoomDto.set(Integer.parseInt(request.getParameter("btype")));
//		studyRoomDto.setBname(Encoding.isoToEuc(request.getParameter("bname")));
		
		
		
		StudyServiceImpl.getStudyServiceImpl().StudyRoomName(studyname, studyRoomDto.getId() );
		return "/index.jsp";
	}
}

