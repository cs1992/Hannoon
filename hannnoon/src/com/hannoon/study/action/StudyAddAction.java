package com.hannoon.study.action;

import javax.servlet.http.HttpSession;

import com.hannoon.study.model.StudyDto;



public class StudyAddAction {
	// 1. data get (request(subject����, content����, bcode�Խ��ǹ�ȣ), session(�̸�,
			// ���̵�, �̸���)
			// (db ( �۹�ȣ ))
			// 2. logic ( service -> dao ) insert
			// 1�� data�� �̿��Ͽ� Dto ����� service�� ����
			// 3. 2�� ����� ���� view page ����.
//			HttpSession session = request.getSession(); // session ����
//			StudyDto memberDto = (StudyDto) session.getAttribute("loginInfo");
//			String path = "/index.jsp"; //������ login.jsp���� �����Ƿ� index
//			
//			if (StudyDto != null) { // �α����� �ߴٸ� - ������!! feat ����
//				int seq = CommonServiceImpl.getCommonService().getNextSeq(); // �� ��ȣ ��� db����
//				
//				StudyDto studyDto = new StudyDto();
//				studyDto.setSeq(seq); // �۹�ȣ ������ ������ �ۼ��� �� Ȯ���� ������ ��, �ۼ��� ���� ������ �� ��ȣ�� �ʿ���
//				reboardDto.setId(memberDto.getId()); // session
//				reboardDto.setName(memberDto.getName()); // session
//				reboardDto.setEmail(memberDto.getEmail1() + "@" + memberDto.getEmail2()); // session
//				reboardDto.setSubject(request.getParameter("subject")); // parameter
//				reboardDto.setContent(request.getParameter("content")); // parameter
//				reboardDto.setBcode(NumberCheck.nullToZero(request.getParameter("bcode"))); // parameter
//				reboardDto.setRef(seq); // �����϶��� ref(�׷��ȣ)�� seq�� ���� ����.
//				
//				int cnt = ReBoardServiceImpl.getReboardService().writeArticle(reboardDto);
//				if (cnt != 0) {
//					// bcode, pg, key, word�� queryString���� �ѱ��, �������� request�� session�� �޾Ƽ� �ѱ���
//					request.setAttribute("seq", seq +""); // ����ȯ�ϱ� �������ϱ�... �������� ������!!!!!!
//					path = "reboard/writeOk.jsp"; // �ּҴ� �빮�� �ҹ��� ������, �۹�ȣ ���������� ( �ۼ��� �� Ȯ�� ), bcode, pg, key, word
//					
//				} else
//					path = "reboard/writeFail.jsp";
//			} 
//			return path;
//		}
}
