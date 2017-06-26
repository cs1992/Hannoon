<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp"%>

<!-- 우리가 만들부분 시작!! -->

<section> <!-- 시작은 section으로 감싸주기 -->

<!-- UI작업할때 전체적인 틀은 모두 div태그로 만들어주기 -->

 <div class="row"> <!-- 한개행 추가 전체크기 12 -->
 
 	<!-- 페이지를 절반으로 나누고 싶을때 -->
 	<div class="6u 12u$(small)">
	절반1
 	</div>
 	<div class="6u 12u$(small)">
	절반2
 	</div>
 	
 	<!-- 페이지를 삼등분 하고 싶을때 -->
 	<div class="4u 12u$(small)">
	1/3
 	</div>
 	<div class="4u 12u$(small)">
	2/3
 	</div>
 	<div class="4u 12u$(small)">
	3/3
 	</div>
 	
 	
 </div>


</section>

<!-- 우리가 만들부분 끝!! -->
<%@ include file="/common/menubar_2.jsp"%>

