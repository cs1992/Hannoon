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
//		HttpSession session = request.getSession(); // session 생성
//		StudyDto studyDto = (StudyDto) session.getAttribute("loginInfo");
//		String path = "/index.jsp"; //원래는 login.jsp지만 없으므로 index
//		
//		if (studyDto != null) { // 로그인을 했다면 - 하지마!! feat 빡구
//			// 글 번호 얻기 db에서
//			
//			StudyDto StudyDto = new StudyDto();
//			StudyDto.setSeq(seq); // 글번호 얻어오는 이유는 작성한 글 확인을 눌렀을 때, 작성한 글을 보려면 글 번호가 필요함
//			StudyDto.setId(memberDto.getId()); // session
//			StudyDto.setName(memberDto.getName()); // session
//			StudyDto.setEmail(memberDto.getEmail1() + "@" + memberDto.getEmail2()); // session
//			StudyDto.setSubject(request.getParameter("subject")); // parameter
//			StudyDto.setContent(request.getParameter("content")); // parameter
//			StudyDto.setBcode(NumberCheck.nullToZero(request.getParameter("bcode"))); // parameter
//			StudyDto.setRef(seq); // 새글일때는 ref(그룹번호)를 seq와 같게 설정.
//			
//			int cnt = ReBoardServiceImpl.getReboardService().writeArticle(reboardDto);
//			if (cnt != 0) {
//				// bcode, pg, key, word는 queryString으로 넘기고, 나머지는 request나 session에 받아서 넘기자
//				request.setAttribute("seq", seq +""); // 형변환하기 귀찮으니까... 귀찮으면 때려쳐!!!!!!
//				path = "reboard/writeOk.jsp"; // 주소는 대문자 소문자 구분함, 글번호 가져가야함 ( 작성한 글 확인 ), bcode, pg, key, word
//				
//			} else
//				path = "reboard/writeFail.jsp";
//		} 
//		return path;
//	}
//	}
//
