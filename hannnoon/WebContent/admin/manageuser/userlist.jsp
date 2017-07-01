<%@page import="com.hannoon.user.model.UserDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.List"%>
<%@ include file="/common/header.jsp"%>
<%
List<UserDto> list = (List<UserDto>) request.getAttribute("userList");
%>
<!--  �츮�� �ٹ� �� ���� �����г� -->

<center>

	<!-- Table -->


	<h2>�Ѵ��� LIST</h2>

	<div class="table-wrapper">
		<table>
			<thead>
				<th width="10">���̵�</th>
				<th width="1">|</th>
				<th width="10">�̸�</th>
				<th width="1">|</th>
				<th width="15">�б�</th>
				<th width="1">|</th>
				<th width="15">�а�</th>
				<th width="1">|</th>
				<th width="20">��ȭ��ȣ</th>
				<th width="1">|</th>
				<th width="20">�̸���</th>
				<th width="1">|</th>
				<th width="10">����</th>
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
					ȸ���� �������� �ʽ��ϴ�.
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
							<li><a href="#" class="button special small">�۾���</a></li>
							<li><a href="#" class="button special small">����</a></li>
						</ul>
	</div>
	</div>
</center>

<!--  �����г� �� -->
<%@ include file="/common/menubar_2.jsp"%>
