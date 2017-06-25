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

	<button type="button" class="button special" data-toggle="modal" data-target="#modal_login" onclick="">
		LOGIN
	</button>
	<button type="button" class="button special" data-toggle="modal" data-target="#modal_join" onclick="">
		JOIN
	</button>
	
	<%@ include file="/user/login/modal_login.jsp" %>
	<%@ include file="/user/join/modal_join.jsp" %>
	
</div>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9Jczl
HUjg"></script><!-- holder.js -->


<!--  메인패널 끝 -->
</div>

<%@ include file="/common/menubar_2.jsp"%>

</div>
<script>
function modal_login_close() {
	$('#modal_login .closeButton').click();
	//$('#modal_login').modal({show : false});
}
</script>
  
</body>
</html>
