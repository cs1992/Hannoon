<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">   
<%
String rootTip = request.getContextPath();
%>    
<!-- 우리가 만들부분 시작!! -->
<link rel="stylesheet" href="/hannnoon/template/assets/css/main.css" />
<!-- UI작업할때 전체적인 틀은 모두 div태그로 만들어주기 -->

<style>
html{
	width: 100%;
	height: 100%;
}
.container {
	width: 100%;
	height: 100%;
	margin: 5% auto;
	position: absolute;
	
}
.outer {
	display: table;
	width: 70%;
	height: 50%;
}
.centered {
	position: relative;
	display: inline-block;
	width: 50%;
	padding: 1em;
}
.closeButton{
	width: 50px;
	height: 50px;
	font-size: 35px;
}
.button2{
	position: absolute;
	width :100%;
	heigth: 100;
	top: 72%;
}
</style>

 <center>
 <div class="row"> <!-- 한개행 추가 전체크기 12 -->

 	<!-- 페이지를 삼등분 하고 싶을때 -->
 	<div class="4u 12u$(small)">
 	</div>
 	 
 	 <div class="12u 12u$(small)"><img src="<%=rootTip%>/template/images/gap.png"></div>
 	 	
 	<div class="12u 12u$(small)" >
	<img src="<%=rootTip%>/template/images/mainstart.jpg" style="height: 70%;">
	<div class="button2">
	<button type="button" class="button" data-toggle="modal" data-target="#modal_login" onclick="">
	&nbsp;로그인&nbsp;</button>
 	<button type="button" class="button" data-toggle="modal" data-target="#modal_join" onclick="">
 	회원가입</button>
 	</div>
 	</div>
	
	<%@ include file="/user/login/modal_login.jsp" %>
	<%@ include file="/user/join/modal_join.jsp" %>
	
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9Jczl
HUjg"></script>
	
	<div class="4u 12u$(small)">
 	</div>
 	
 </div>
</center>

<script>
function modal_login_close() {
	$('#modal_login .closeButton').click();
	//$('#modal_login').modal({show : false});
}
</script>
