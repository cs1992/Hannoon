//package com.hannoon.study.action;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.*;
//
//import com.hannoon.study.model.StudyDto;
//import com.hannoon.study.service.StudyServiceImpl;
//
//
//public class StudyAddAction {
//
//	public String execute(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		
//		HttpSession session = request.getSession(); // session ����
//		StudyDto studyDto = (StudyDto) session.getAttribute("loginInfo");
//		String path = "/index.jsp"; //������ login.jsp���� �����Ƿ� index
//		
//		if (studyDto != null) { // �α����� �ߴٸ� - ������!! feat ����
//			// �� ��ȣ ��� db����
//			
//			StudyDto StudyDto = new StudyDto();
//			StudyDto.setSeq(seq); // �۹�ȣ ������ ������ �ۼ��� �� Ȯ���� ������ ��, �ۼ��� ���� ������ �� ��ȣ�� �ʿ���
//			StudyDto.setId(memberDto.getId()); // session
//			StudyDto.setName(memberDto.getName()); // session
//			StudyDto.setEmail(memberDto.getEmail1() + "@" + memberDto.getEmail2()); // session
//			StudyDto.setSubject(request.getParameter("subject")); // parameter
//			StudyDto.setContent(request.getParameter("content")); // parameter
//			StudyDto.setBcode(NumberCheck.nullToZero(request.getParameter("bcode"))); // parameter
//			StudyDto.setRef(seq); // �����϶��� ref(�׷��ȣ)�� seq�� ���� ����.
//			
//			int cnt = ReBoardServiceImpl.getReboardService().writeArticle(reboardDto);
//			if (cnt != 0) {
//				// bcode, pg, key, word�� queryString���� �ѱ��, �������� request�� session�� �޾Ƽ� �ѱ���
//				request.setAttribute("seq", seq +""); // ����ȯ�ϱ� �������ϱ�... �������� ������!!!!!!
//				path = "reboard/writeOk.jsp"; // �ּҴ� �빮�� �ҹ��� ������, �۹�ȣ ���������� ( �ۼ��� �� Ȯ�� ), bcode, pg, key, word
//				
//			} else
//				path = "reboard/writeFail.jsp";
//		} 
//		return path;
//	}
//	}
//
