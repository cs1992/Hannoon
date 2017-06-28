package com.hannoon.study.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.hannoon.study.model.StudyRoomDto;
import com.hannoon.study.service.StudyServiceImpl;



public class StudyAddAction {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		StudyRoomDto studyRoomDto = new StudyRoomDto();
		String studyname = request.getParameter("studyname");
		studyRoomDto.setStudy_name((studyname));
//		studyRoomDto.set(Integer.parseInt(request.getParameter("btype")));
//		studyRoomDto.setBname(Encoding.isoToEuc(request.getParameter("bname")));
		StudyServiceImpl.getStudyServiceImpl().StudyRoomName(studyname);
		return "/index.jsp";
	}
}

