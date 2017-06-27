<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  우리가 꾸밀 곳 여기 메인패널 -->

<center>

	<!-- Table -->


	<h2 type="hidden" id="subject" name="subject">
		내 한눈방<input class="button special small" type="button" value="수 정">
	</h2>

	<div class="table-wrapper">
		<form>
			<table width="100%">
				<thead>
					<th width="100" bgcolor="lightblue" align="center">제목</th>
					<th width="50" bgcolor="lightblue" >공유</th>
					<th width="30" bgcolor="lightblue" align="center">작성자</th>
					<th width="30" bgcolor="lightblue" align="center">날짜</th>
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
					<li><span class="button disabled">이전</span></li>
					<li><a href="#" class="page active">1</a></li>
					<li><a href="#" class="page">2</a></li>
					<li><a href="#" class="page">3</a></li>
					<li><span>&hellip;</span></li>
					<li><a href="#" class="page">8</a></li>
					<li><a href="#" class="page">9</a></li>
					<li><a href="#" class="page">10</a></li>
					<li><a href="#" class="button">다음</a></li>
				</ul>
		</form>
		<ul class="actions small">
			<li><a href="<%=root%>/study/studyroom.jsp"
				class="button special small">글쓰기</a></li>
			<li><a href="#" class="button special small">삭제</a></li>
		</ul>
	</div>
	</div>
</center>

<!--  메인패널 끝 -->
<%@ include file="/common/menubar_2.jsp"%>