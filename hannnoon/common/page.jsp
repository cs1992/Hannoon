<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.hannoon.util.*,com.hannoon.user.model.*"%>
    
<%
String pageRoot = request.getContextPath();

int gcode = NumberCheck.nullToZero(request.getParameter("gcode"));
int pg = NumberCheck.nullToOne(request.getParameter("pg"));
String key = Encoding.nullToBlank(request.getParameter("key"));
String word = Encoding.isoToEuc(request.getParameter("word"));

UserDto userDto = (UserDto) session.getAttribute("loginInfo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript">
var root = "<%=pageRoot%>";
var gcode = "<%=gcode%>";
var pg = "<%=pg%>";
var key = "<%=key%>";
var word = "<%=word%>";
var control = "";
</script>
<script type="text/javascript" src="<%=pageRoot%>/js/hannoonboard.js"></script>
<title>페이지처리JSP</title>
</head>
<body>
	<form name="commonForm" method="get" action="">
	<input type="hidden" name="act" value="">
	<input type="hidden" name="gcode" value="">
	<input type="hidden" name="pg" value="">
	<input type="hidden" name="key" value="">
	<input type="hidden" name="word" value="">
	<input type="hidden" name="gseq" value="">
</form>
</body>
</html>