<%@page import="com.hannoon.util.SearchConstance"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%--<%@ include file="/common/public.jsp"%> --%>
<%
String root = request.getContextPath();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="<%=root%>/template/assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<title>한눈</title>

<script type="text/javascript" src="<%=root%>/js/search.js"></script>
	<!-- Scripts -->
<script src="<%=root%>/template/assets/js/jquery.min.js"></script>
<script src="<%=root%>/template/assets/js/skel.min.js"></script>
<script src="<%=root%>/template/assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="<%=root%>/template/assets/js/main.js"></script>

<%--<script src="<%=root%>/js/search.js"></script> --%>
<script type="text/javascript">
var root = "<%=root%>";
</script>


</head>
<body>



	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header" class="icons" ><a href="index.jsp" class="logo"><img src="<%=root%>/template/images/hannoonlogo.png" width="200" hight="60">
				</a>
				
				<!-- Search --> 
				<section id="search" class="alt">
				<form method="get" name="searchForm" action="#">
				<input type="hidden" name="<%=SearchConstance.SEARCH_TYPE_PARAM%>" value="<%=SearchConstance.HANNOON%>">
				<input type="hidden" name="<%=SearchConstance.SEARCH_NAME_PARAM%>" id="<%=SearchConstance.SEARCH_NAME_PARAM%>" value="<%=SearchConstance.SearchType.ALL.value%>">
				<input type="text" name="<%=SearchConstance.KEYWROD%>" id="<%=SearchConstance.KEYWROD%>" placeholder="한눈검색" value="" onkeypress="javascript:if(event.keyCode == 13){search();}" />
				<ul class="icons">
				</ul>
				</form>
				</section>
				
				<ul class="icons" name="popUp" id="popUp" action="#">
				<li><a href="#" onmouseover="javascript:popup();"><img src="<%=root%>/template/images/notice.png" width="30" height="30" ></a></li>
				</ul>
				
				
				<%--
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-snapchat-ghost"><span
							class="label">Snapchat</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
				</ul>
				 --%>
				 
				  
				</header>