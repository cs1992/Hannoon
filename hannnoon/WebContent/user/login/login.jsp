<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  우리가 꾸밀 곳 여기 메인패널 -->
<style>
html{
	width: 100%;
	height: 100%;
}
.container {
	width: 100%;
	height: 100%;
	margin: 5% auto;
}
.outer {
	display: table;
	width: 70%;
	height: 50%;
}
.inner {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}
.centered {
	position: relative;
	display: inline-block;
	width: 50%;
	padding: 1em;
}
</style>

<center>
<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">
<!-- 폼 시작 -->
	<h1>LOGIN</h1>
	<form name="loginform" method="post" action="#">
	
	<div style="float:right;">
	<input type="checkbox" name="idsv"> 
	<label>아이디 저장</label></div>
	
	<table>
	<tr>
		<td>
			<div class="">
				<input type="text" name="id" id="id" value=""
					placeholder="Username" />
			</div>
		</td>
		
	</tr>
	<tr>
		<td>
			<div class="">
				<input type="password" name="pass" id="pass" value="" 
				placeholder="Password" />
			</div>
		</td>
	</tr>
	</table>
	<button type="button" class="button special fit">로그인</button>
	<button type="button" class="button fit" data-dismiss="modal">나가기</button>
	<div style="float:right;"><a href="" align="right">아직 한눈인이 아니세요?</a></div>
	</form>
	<!-- 폼 끝 -->
</div>
</div>
</div>
</div>
</center>

<!--  메인패널 끝 -->
</div>

<%@ include file="/common/menubar_2.jsp"%>

</div>

</body>
</html>