<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.hannoon.board.model.NoticeBoardDto, java.util.List"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  우리가 꾸밀 곳 여기 메인패널 -->
<% List<NoticeBoardDto> list = (List<NoticeBoardDto>) request.getAttribute("noticeListView"); %>

<center>

	<!-- Table -->


	<h2>공지사항</h2>

	<div class="table-wrapper">
		<table>
			<thead>
				<th width="10">번호</th>
				<th width="150">제목</th>
				<th width="30">작성자</th>
				<th width="30">날짜</th>
				</tr>
			</thead>
			<tbody>
			
<%
if(list != null){
	int size = list.size();
	for( NoticeBoardDto noticeBoardDto : list) {

%>			
				<tr>
					<td><%=noticeBoardDto.getNotice_code() %></td>
					<td><%=noticeBoardDto.getGle_code() %></td>
					<td><%=noticeBoardDto.getTitle() %></td>
					<td><%=noticeBoardDto.getContent() %></td>
					<td><%=noticeBoardDto.getId() %></td>
					<td><%=noticeBoardDto.getDate_time()%></td>
				</tr>
				
<%
	}
	
} else {
%>
				<tr>
					<td align="center" class="text_gray" colspan="10">
					<br>
					공지사항이 존재하지 않습니다.
					<br>
					</td>
				</tr>
<% 
}
%>				
			</tbody>
		</table>
		<div>
						<ul class="actions small">
							<li><a href="<%=root%>/board/notice/write.jsp" class="button special small">공지작성</a></li>
							<li><a href="#" class="button special small">공지삭제</a></li>
						</ul>
	</div>
	</div>
</center>

<!--  메인패널 끝 -->
<%@ include file="/common/menubar_2.jsp"%>
