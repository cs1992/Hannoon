<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.hannoon.board.model.NoticeBoardDto, java.util.List"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  �츮�� �ٹ� �� ���� �����г� -->
<% List<NoticeBoardDto> list = (List<NoticeBoardDto>) request.getAttribute("noticeListView"); %>

<center>

	<!-- Table -->


	<h2>��������</h2>

	<div class="table-wrapper">
		<table>
			<thead>
				<th width="10">��ȣ</th>
				<th width="150">����</th>
				<th width="30">�ۼ���</th>
				<th width="30">��¥</th>
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
					���������� �������� �ʽ��ϴ�.
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
							<li><a href="<%=root%>/board/notice/write.jsp" class="button special small">�����ۼ�</a></li>
							<li><a href="#" class="button special small">��������</a></li>
						</ul>
	</div>
	</div>
</center>

<!--  �����г� �� -->
<%@ include file="/common/menubar_2.jsp"%>
