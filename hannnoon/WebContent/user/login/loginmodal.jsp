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
.closeButton{
	width: 50px;
	height: 50px;
	font-size: 35px;
}
</style>


<div class="container">

	<button type="button" class="button special" data-toggle="modal" data-target="#myModal_s">
	LOGIN
	</button>

	<div class="modal fade" id="myModal_s" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close closeButton" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h1 class="modal-title" id="myModalLabel">Login</h1>
	      </div>
	      <div class="modal-body">
<!-- 폼 시작 -->

	
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
	<div style="float:right;"><a href="javascript:;" data-toggle="modal" data-target="#myModal_s">아직 한눈인이 아니세요?</a></div>
	<%@ include file="/user/join/modal_join.jsp" %>
	</form>
	<!-- 폼 끝 -->
	      </div>
	    </div>
	  </div>
	</div>

</div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->

<!--  메인패널 끝 -->
</div>

<%@ include file="/common/menubar_2.jsp"%>

</div>

</body>
</html>