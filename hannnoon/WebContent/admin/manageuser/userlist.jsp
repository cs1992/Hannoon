<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.List"%>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<%@ include file="/common/header.jsp"%>
<%
String id = Encoding.isoToEuc(request.getParameter("id"));
int pg = NumberCheck.nullToOne(request.getParameter("pg"));
String key = Encoding.nullToBlank(request.getParameter("key"));
String word = Encoding.isoToEuc(request.getParameter("word"));

List<UserDto> list = (List<UserDto>) request.getAttribute("userList");
if(list != null) {
	UserListPageNavigation navigator = (UserListPageNavigation) request.getAttribute("navigator");
%>
<style type="text/css"> 
    tr.trhover:hover { background-color: lightyellow; } 
</style> 

<script type="text/javascript">
var id = "<%=id%>";
var pg = "<%=pg%>";
var key = "<%=key%>";
var word = "<%=word%>";
function ulSearchArticle() { //폼이 있을때는  submit으로 넘김 폼이니까  hidden으로 값 넘겨줌
//얘는 여기서만 쓰니까 board.js에 안쓰고 냅둠
	if(document.ulSearchForm.word.value == "") {
		alert("검색어입력!!!!");
		return;
	} else {
		document.ulSearchForm.action = "<%=root%>/admin"; 
		document.ulSearchForm.submit();
	}
}
</script>
<form name="commonForm" method="get" action="">
<!-- 항상 바뀌니까 value 다 비워두기 -->
	<input type="hidden" name="act" value="">
	<input type="hidden" name="id" value="">
	<input type="hidden" name="pg" value="">
	<input type="hidden" name="key" value="">
	<input type="hidden" name="word" value="">
	<input type="hidden" name="seq" value="">
</form>
<!--  우리가 꾸밀 곳 여기 메인패널 -->
<center>

<!-- Table -->
	
<br>
<div class="row">
	<div style="float:center;">
		<h2>한눈인 LIST</h2> 전체 회원수 : <%=navigator.getTotalArticleCount() %> 명
	</div>
	<br>
	<div class="2u 12u$(small)" style="float:right;">
		<select name="userlist">
	  	  <option value="alllist">전체보기</option>
		<option value="blacklist">블랙 LIST</option>
		</select>
	</div>
</div>
<br>
	
<div class="table-wrapper">
	<table>
		<thead>
			<th width="10%">아이디</th>
			<th width="1%">|</th>
			<th width="10%">이름</th>
			<th width="1%">|</th>
			<th width="15%">학교</th>
			<th width="1%">|</th>
			<th width="15%">학과</th>
			<th width="1%">|</th>
			<th width="20%">전화번호</th>
			<th width="1%">|</th>
			<th width="20%">이메일</th>
			<th width="1%">|</th>
			<th width="10%">생일</th>
			</tr>
		</thead>
		<tbody>

<%
int size = list.size();
if(size != 0) {
	for(int i=0; i<size; i++) {
		UserDto userDtoList = list.get(i);
%>
			<tr class="trhover" onclick="javascript:showModal(<%=i%>);">
				<td id="id<%=i%>"><%= userDtoList.getId()%></td>
				<input type="hidden" id="id" value="<%= userDtoList.getId()%>">
				<td></td>
				<td id="name<%=i%>"><%= userDtoList.getName()%></td>
				<td></td>
				<td id="schoolname<%=i%>"><%= userDtoList.getSchoolName() %></td>
				<td></td>
				<td id="partname<%=i%>"><%= userDtoList.getPartName() %></td>
				<td></td>
				<td id="tel<%=i%>"><%= userDtoList.getTel1() %> <%= userDtoList.getTel2() %> <%= userDtoList.getTel3() %></td>
				<td></td>
				<td id="email<%=i%>"><%= userDtoList.getEmail1() %><%= userDtoList.getEmail2() %></td>
				<td></td>
				<td id="birth<%=i%>"><%= userDtoList.getBirth1() %>.<%= userDtoList.getBirth2() %>.<%= userDtoList.getBirth3() %></td>
			</tr>
<%
	}
} else {
%>
				<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
					<td align="center" class="text_gray" colspan="10">
					<br>
					회원이 존재하지 않습니다.
					<br>
					</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				</tr>
<% 
}
%>
		</tbody>
	</table>
</div>

<!-- 하단 페이징 -->
<div class="row">
	<div class="3u 12u$(small)">&nbsp;</div>
	<!--PAGE-->
	<div class="6u 12u$(small)">
	<%=navigator.getNavigator() %>
	</div>
	<div class="3u 12u$(small)">
	<b><%=navigator.getPageNo() %></b> / <%=navigator.getTotalPageCount() %>pages
	</div>
</div>

<!-- 검색영역  -->
<form name="ulSearchForm" method="get" action="" onsubmit="return false;" style="margin: 0px">
<input type="hidden" name="" value="">
<input type="hidden" name="act" value="list">
<input type="hidden" name="id" value="<%=id%>">
<input type="hidden" name="pg" value="1">
<div class="row" style="margin:auto;">	
	<div class="4u 12u$(small)">&nbsp;</div>
	<div class="1u 12u$(small)">
		<select name="key">
				<option value="name">이름
				<option value="id">아이디
		</select> 
	</div>
	<div class="2u 12u$(small)">
		<input type="text" name="word" id="word" onkeypress="javascript:if(event.keyCode == 13){ulSearchArticle();}">
	</div>
	<div class="1u 12u$(small)">
	<a href="javascript:ulSearchArticle();" class="button special icon fa-search">search</a>
	</div>
</div>
</form>

</center>

<%@ include file="/admin/manageuser/modal_userdetail.jsp" %>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
function showModal(seq) {	
	$("#modalid").html($("#id"+seq).text());  
	$("#modalname").html($("#name"+seq).text());  
	$("#modalschoolname").html($("#schoolname"+seq).text());  
	$("#modalpartname").html($("#partname"+seq).text());  
	$("#modaltel").html($("#tel"+seq).text());  
	$("#modalemail").html($("#email"+seq).text());  
	$("#modalbirth").html($("#birth"+seq).text());  
	$('#modal_userdetail').modal({show:true}); 
}

control = "/admin";
function listArticle(mpg) { //목록은 여기로 (내가 보고 있던 페이지로감) -> 검색어, 페이지 유지
	document.commonForm.act.value = "list";
	document.commonForm.id.value = id;
	document.commonForm.pg.value = mpg;
	document.commonForm.key.value = key;
	document.commonForm.word.value = word;
	
	document.commonForm.action = root + control;
	document.commonForm.submit();
}
</script>
<%
} else {
%>
<script>
alert("부적절한 URL 접근 입니다.");
document.location.href = "<%=root%>";
</script>
<%
}
%>
<!--  메인패널 끝 -->
<%@ include file="/common/menubar_2.jsp"%>
