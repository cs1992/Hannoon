<%@page import="com.hannoon.user.model.UserDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.List"%>
<%@ include file="/common/header.jsp"%>
<%
List<UserDto> list = (List<UserDto>) request.getAttribute("userList");
%>
<!--  우리가 꾸밀 곳 여기 메인패널 -->

<center>

	<!-- Table -->


	<h2>한눈인 LIST</h2>

	<div class="table-wrapper">
		<table>
			<thead>
				<th width="10">아이디</th>
				<th width="1">|</th>
				<th width="10">이름</th>
				<th width="1">|</th>
				<th width="15">학교</th>
				<th width="1">|</th>
				<th width="15">학과</th>
				<th width="1">|</th>
				<th width="20">전화번호</th>
				<th width="1">|</th>
				<th width="20">이메일</th>
				<th width="1">|</th>
				<th width="10">생일</th>
				</tr>
			</thead>
			<tbody>
<%
int size = list.size();
if(size != 0) {
	for(UserDto userDto : list) {
%>
				<tr>
					<td><%= userDto.getId() %></td>
					<td></td>
					<td><%= userDto.getName() %></td>
					<td></td>
					<td><%= userDto.getSchoolName() %></td>
					<td></td>
					<td><%= userDto.getPartName() %></td>
					<td></td>
					<td><%= userDto.getTel1() %> <%= userDto.getTel2() %> <%= userDto.getTel3() %></td>
					<td></td>
					<td><%= userDto.getEmail1() %><%= userDto.getEmail2() %></td>
					<td></td>
					<td><%= userDto.getBirth1() %>.<%= userDto.getBirth2() %>.<%= userDto.getBirth3() %></td>
				</tr>
				
<%
	}
} else {
%>
				<tr>
					<td align="center" class="text_gray" colspan="10">
					<br>
					회원이 존재하지 않습니다.
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
							<li><a href="#" class="button special small">글쓰기</a></li>
							<li><a href="#" class="button special small">삭제</a></li>
						</ul>
	</div>
	</div>
</center>

<!--  메인패널 끝 -->
<%@ include file="/common/menubar_2.jsp"%>
