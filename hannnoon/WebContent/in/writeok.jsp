<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/header.jsp" %>
<%@ include file="/common/page.jsp" %>

<%
String gseq = (String) request.getAttribute("gseq");
if(gseq != null) {
%>
<scrpit>
control = "/hannoonin";
</scrpit>
<!-- 우리가 만들부분 시작!! -->

<!-- UI작업할때 전체적인 틀은 모두 div태그로 만들어주기 -->

 <div class="row"> <!-- 한개행 추가 전체크기 12 -->
 	
 	<!-- 페이지를 삼등분 하고 싶을때 -->
 	<div class="1u 12u$(small)">
 	</div>
 	
 	<table>
 	<div class="10u 12u$(small)">
	<tr>
		<td class="bg_menu" width="100%" style="padding: 25px" height="35"
			align="center"><b>게시물이 등록되었습니다.</b><br>
		<br>
		<div align="center">
			<a href="javascript:viewArticle('<%=gseq%>');">
			<input type="button spceial" width="91" height="21"
			border="0" align="absmiddle" alt="작성한 글 확인" hspace="10">
			</a>
			<a href="javascript:listArticle('<%=pg%>');">
			<input type="button spceial" width="62" height="21" border="0" align="absmiddle" alt="목록보기"
			hspace="10">
			</a>
		</div>
		</td>
	</tr>	
 	</div>
 	</table>
 	
 	<div class="1u 12u$(small)">
 	</div>
 	
 	
 </div>


<!-- 우리가 만들부분 끝!! -->

<%
} else {
%>
<script>
alert("부적절한 URL접근입니다.");
document.location.href = "<%=root%>";
</script>
<%		
}
%>
<%@ include file="/common/menubar_2.jsp"%>

