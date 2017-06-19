<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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
	
	<!-- Form -->
	<h1>Login</h1>
	
	<form name="loginform" method="post" action="#">
	
	<input type="checkbox" name="idsv"> 
	<label>아이디 저장</label>
	
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
	<tr>
	</table>
	
	<ul class="actions fit">
		<a href="" class="button special fit">로그인하기</a>
		<a href="" class="button fit">한눈인되기</a>
	</ul>
	
	</form>
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
