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
	margin: 1% auto;
}
.outer {
	display: table;
	width: 100%;
	height: 100%;
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
	<h1>JOIN</h1>
	<form name ="joinform" method="post" action="">
	<input type="hidden" name="act" value="register">
	 <table>
			<tr>
				<td>
			 	<div class="row">
    				<div class="8u 12u$(small)">
					<input type="text" name="id" id="id" value="" size="12" readonly="readonly" placeholder="아이디"></div>
   					<div class="4u 12u$(small)">
					<input type="button" class="special" value="아이디중복검사" onclick="javascript:openidcheck();"></div>
				</div>
				</td>
			</tr>

			<tr>
				<td>
	        	<input type="password" name="pass" id="pass" size="12" maxlength="12" placeholder="비밀번호"></td>
			</tr>

			<tr>
	        	<td>
	         	<input type="password" name="passcheck" id="passcheck" size="12" maxlength="12" placeholder="비밀번호 재확인"></td>
			</tr>
	</table>
	<table>
			<tr>
			 	<td>이름
			 	<input type="text" name="name" id="name" value="" size="12"></td>
			</tr>
			
			<tr>
				<td>
				<div class="4u 12u$(small)">생일</div>
				<div class="row">
					<div class="4u 12u$(small)">
						<input type="text" name="name" id="name" value="" size="12" placeholder="년 (4자리)"></div>
					<div class="4u 12u$(small)">
						<div class="select-wrapper">
							<select name="demo-category" id="demo-category">
								<option value="">월</option>
<%
for(int m=1; m<=12; m++) {
	if(m<10){
%>
								<option value="<%=m%>"><%out.print("0"+m);%></option>
<%
	} else {
%>
								<option value="<%=m%>"><%=m%></option>
<%
	}
}
%>
							</select>
						</div>
					</div>
					<div class="4u 12u$(small)">
							<input type="text" name="name" id="name" value="" size="12" placeholder="일"></div>
				</div>
				</td>
			</tr>			
		    
		    <tr>
			<td>전화번호
				<div class="row">
					<div class="4u 12u$(small)">
						<input type="text" name="name" id="name" value="" size="12" placeholder="010"></div>
					<div class="4u 12u$(small)">
						<input type="text" name="name" id="name" value="" size="12" placeholder="0000"></div>
					<div class="4u 12u$(small)">
							<input type="text" name="name" id="name" value="" size="12" placeholder="0000"></div>
				</div>
				</td>
			</tr>

			<tr>
			 <td>우편번호
			 <div class="row">
					<div class="4u 12u$(small)">
			 			<input type="text" name="zip1" id="zip1" value="" size="5" maxlength="3"></div>
					<div class="4u 12u$(small)">
						<input type="text" name="zip2" id="zip2" value="" size="5" maxlength="3"></div>
					<div class="4u 12u$(small)">
			 		<input type="button" class="special" value="우편번호검색" onclick="javascript:openzip();"></div>
			 </td>
			</tr>
			<tr>
			 <td>주소
			 <input type="text" name="addr1" id="addr1" value="" size="100" readonly="readonly"></td>
			</tr>

			<tr>
			 <td>상세주소
			 <input type="text" name="addr2" id="addr2" size="100"></td>
			</tr>

            <tr>
			 <td>이메일
			 <div class="row">
			 	<div class="6u 12u$(xsmall)">
			 		<input type="text" name="email1" value="" size="12"></div>
					<!--<input type="text" name="direct" value="" size=12>-->
				<div class="6u 12u$(xsmall)">
	                <select name="email2">
					<!--<option value="naver.com">직접입력</option>-->
		            <option value="@naver.com">@naver.com</option>
					<option value="@hanmail.net">@hanmail.net</option>
					</select></div>
			 </td>
			</tr>
<!--			
			<tr>
			 <td class="td2">성별<font color="red">*</font></td> 
	         <td class="td4"><input type="radio" name="gender" value="남" checked>남자
        	        <input type="radio" name="gender" value="여">여자</td>
			</tr>
-->
</table>
<table>
			<tr>
             <td style="width:50%">학교
             <div class="">
	              <select name="school">
					<!--<option value="">직접입력</option>-->
		            <option value="">선택</option>
		            <option value="서울대학교">서울대학교</option>
					<option value="연세대학교">연세대학교</option>
					<option value="고려대학교">고려대학교</option>
					</select></div>
	         </td>
	         <td style="width:50%">전공
	         <div class="">
	         	<select name="part">
					<!--<option value="">직접입력</option>-->
		            <option value="">선택</option>
		            <option value="컴퓨터공학과">컴퓨터공학과</option>
					<option value="정보통신공학과">정보통신공학과</option>
					<option value="정보보호학과">정보보호학과</option>
					</select></div>
	         </td>
	   		</tr>
   </table>
             <input type="button" class="special" value="회원가입" onclick="javascript:join();">
	         <input type="reset" value="취소">
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