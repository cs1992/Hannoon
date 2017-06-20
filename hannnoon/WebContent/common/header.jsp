<%@page import="com.hannoon.util.SearchConstance"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">

		<!-- Main -->
		<div id="main">

			
			<!-- #### HEAD #### -->
			<center>
				
				<header id="header" class="icons"><a href="index.jsp" class="logo"><img src="./template/images/hannoonlogo.png" width="200" hight="60">
				</a></a> 
				
				<!-- Search --> 
				<section id="search" class="alt">
				<form method="get" name="searchForm" action="#">
				<input type="hidden" name="<%=SearchConstance.SEARCH_TYPE_PARAM%>" value="<%=SearchConstance.HANNOON%>">
				<input type="text" name="query" id="query" placeholder="한눈검색" onkeypress="javascript:if(event.keyCode == 13){search();}" />
				<ul class="icons">
				</ul>
				</form>
				</section>
				
				<ul class="icons">
				<li><span class="label"><img src="./template/images/notice.png" width="30" height="30"></span></li>
				</ul>
				<%--			
	<ul class="icons">
		<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		<li><a href="#" class="icon fa-snapchat-ghost"><span
				class="label">Snapchat</span></a></li>
		<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
	</ul>
--%> </header>
			</center>