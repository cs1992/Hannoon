<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  �츮�� �ٹ� �� ���� �����г� -->

<center>

	<!-- Table -->


	<h2 type="hidden" id="subject" name="subject">
		�� �Ѵ���<input class="button special small" type="button" value="�� ��">
	</h2>

	<div class="table-wrapper">
		<form>
			<table width="100%">
				<thead>
					<th width="100" bgcolor="lightblue" align="center">����</th>
					<th width="50" bgcolor="lightblue" >����</th>
					<th width="30" bgcolor="lightblue" align="center">�ۼ���</th>
					<th width="30" bgcolor="lightblue" align="center">��¥</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
			<div>
				<h4>Pagination</h4>
				<ul class="pagination">
					<li><span class="button disabled">����</span></li>
					<li><a href="#" class="page active">1</a></li>
					<li><a href="#" class="page">2</a></li>
					<li><a href="#" class="page">3</a></li>
					<li><span>&hellip;</span></li>
					<li><a href="#" class="page">8</a></li>
					<li><a href="#" class="page">9</a></li>
					<li><a href="#" class="page">10</a></li>
					<li><a href="#" class="button">����</a></li>
				</ul>
		</form>
		<ul class="actions small">
			<li><a href="<%=root%>/study/studyroom.jsp"
				class="button special small">�۾���</a></li>
			<li><a href="#" class="button special small">����</a></li>
		</ul>
	</div>
	</div>
</center>

<!--  �����г� �� -->
<%@ include file="/common/menubar_2.jsp"%>