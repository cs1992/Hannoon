<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"
	import="java.util.List, com.hannoon.in.model.*
	, com.hannoon.util.* "%>
<%@ include file="/common/page.jsp"%>
<%@ include file="/common/header.jsp"%>


<%
	List<InDto> list = (List<InDto>) request.getAttribute("listArticle");

	if (list != null) {
		PageNavigation navigator = (PageNavigation) request.getAttribute("navigator");
%>

<!-- 우리가 만들부분 시작!! -->

<!-- UI작업할때 전체적인 틀은 모두 div태그로 만들어주기 -->
<script>
	control = "/hannoonin";
</script>
<div class="row">
	<!-- 한개행 추가 전체크기 12 -->


	<!-- 페이지를 삼등분 하고 싶을때 -->
	<div class="12u 12u$(small)">
		<img src="<%=root%>/template/images/gap.png" height="20px">
	</div>
	<div class="1u 12u$(small)">

		<img src="<%=root%>/template/images/gap.png">
	</div>
	<div class="10u 12u$(small)">

		<ul class="alt">
			<li>
				<div class="1u 12u$(small)" style="float: right;">
					<ul class="actions small">
						<li><a href="<%=root%>/hannoonin/question.jsp"
							class="button special">Q&nbsp;질문하기</a></li>
					</ul>
				</div>
			</li>
			<header class="major">
				<h3>HanNoonIn</h3>
			</header>


			<%
				int size = list.size();
					//					if (size != 0) {
					for (InDto inDto : list) {
						//						for (int i = 0; i < size; i++) {
						//							InDto inDto = list.get(i);
			%>
			<li>

				<div class="row">
					<div class="12u 12u$(small)">
						<div class="row">
							<div class="9u 12u$(small)">
								<a href="javascript:listArticle('<%=inDto.getGseq()%>');"><%=inDto.getTitle()%></a>
							</div>
							<div class="2u 12u$(small)"><%=inDto.getDate_time()%></div>
							<div class="1u 12u$(small)">
								<img src="<%=root%>/template/images/question.png">
							</div>
						</div>
						<div class="row">
							<div class="12u 12i$(small)"><%=inDto.getContent()%></div>
						</div>
						<div class="row">
							<div class="4u 12$(small)">
								<a href="<%=inDto.getId()%>"><%=inDto.getHit()%></a>
							</div>
						</div>
					</div>

				</div>
			</li>
	</div>
	<!-- 하단 페이징 -->
	<div class="row">
		<div class="3u 12u$(small)">&nbsp;</div>
		<!--PAGE-->
		<div class="6u 12u$(small)"><%=navigator.getNavigator()%></div>
		<div class="3u 12u$(small)">
			<b><%=navigator.getPageNo()%></b><%=navigator.getTotalPageCount()%>pages
		</div>
	</div>
	<%
		}
			//		}

		} else {
	%>
	<div class="row">

	<div class="12u 12u$(small)">
		<img src="<%=root%>/template/images/gap.png" height="10px">
	</div>
	<div class="1u 12u$(small)">

		<img src="<%=root%>/template/images/gap.png">
	</div>
	<div class="10u 12u$(small)">

		<ul class="alt">
			<li>
				<div class="1u 12u$(small)" style="float: right;">
					<ul class="actions small">
						<li><a href="<%=root%>/in/question.jsp"
							class="button special">Q&nbsp;질문하기</a></li>
					</ul>
				</div>
			</li>
			<header class="major">
				<h3>HanNoonIn</h3>
			</header>
	<center>
		<table>
			<tr>
				<td align="center" class="text_gray" colspan="10"><br>
					게시글이 존재하지 않습니다. <br></td>
			</tr>
			<br>
		</table>
</div>
</center>
</div>

<%
	}
%>

<!-- 우리가 만들부분 끝!! -->
<%@ include file="/common/menubar_2.jsp"%>

