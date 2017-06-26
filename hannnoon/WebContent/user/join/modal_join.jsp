<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String hnj = request.getContextPath();
%>
<script type="text/javascript" src="<%=hnj%>/js/myajax.js"></script>
<script type="text/javascript">
function join(){
	if(document.joinform.id.value == "") {
	//if(document.getElementById("id").value == "") {
		alert("아이디 입력!");
		return;
	} else if(document.getElementById("name").value == "") {
		alert("이름 입력!");
		return;
	} else if(document.getElementById("pw").value  == "") {
		alert("비밀번호 입력!");
		return;
	} else if(document.getElementById("pw").value != document.getElementById("pwcheck").value) {
		alert("비밀번호 확인!");
		return;
	} else {
		document.joinform.action = "<%= hnj %>/user";
		document.joinform.submit();
		
	}
}

var view;
var flag = false;

function idcheck(){
	view = document.getElementById("idresult");
	var idval = document.joinform.id.value;
	
	if(idval.length < 5 || idval.length > 16) {
		view.innerHTML = "<font folor='orange'>아이디는 5자리이상 16자 이하입니다.</font>"
	} else {
		var param = "act=idsearch&id=" + encodeURI(idval);
		sendRequest("<%=hnj%>/user", param, idresult, "GET");
	}
}

function idresult() {
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) {
			var txt = httpRequest.responseText;
			view.innerHTML = txt;
		} else {
			alert("문제발생 : " + httpRequest.status);
		}
	}
}

function passwordcheck(){
	view = document.getElementById("pwcheckresult");
	var pw = document.joinform.pw.value;
	var pwck = document.joinform.pwcheck.value;
	
	if(pw != pwck) {
		view.innerHTML = "<font folor='red'>비밀번호가 일치하지 않습니다.</font>"
	} else {
		view.innerHTML = "";
	}
}

</script>

<style>
#modal_join .modal-dialog{
	width: 45%;
}
</style>

	<div class="modal fade" id="modal_join" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-lg">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close closeButton" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h1 class="modal-title" id="myModalLabel">Join</h1>
	      </div>
	      <div class="modal-body">
<!-- 폼 시작 -->

<form name ="joinform" method="post" action="">
	<input type="hidden" name="act" value="join">
	 <table>
			<tr>
				<td>
					<input type="text" name="id" id="id" value="" size="12" placeholder="아이디" onkeyup="javascript:idcheck();">
					<div id="idresult" style="float:left;"></div>
				</td>
			</tr>

			<tr>
				<td>
	        	<input type="password" name="pw" id="pw" size="12" maxlength="12" placeholder="비밀번호"></td>
			</tr>

			<tr>
	        	<td>
	         		<input type="password" name="pwcheck" id="pwcheck" size="12" maxlength="12" placeholder="비밀번호 재확인" onkeyup="javascript:passwordcheck();">
	         		<div id="pwcheckresult" style="float:left;"></div>
	         	</td>
			</tr>
	</table>
	<table>
			<tr>
			 	<td><div style="float:left;">이름</div>
			 		<input type="text" name="name" id="name" value="" size="12" onkeyDown="nameValidate()">
			 		<div id="nameValidateData"></div>	
			 	</td>
			</tr>
			
			<tr>
				<td>
				<div style="float:left;">생일</div>
				<div class="row">
					<div class="4u 12u$(small)">
						<input type="text" name="birth1" id="birth1" value="" size="12" placeholder="년 (4자리)"></div>
					<div class="4u 12u$(small)">
						<div class="select-wrapper">
							<select name="birth2" id="birth2">
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
							<input type="text" name="birth3" id="birth3" value="" size="12" placeholder="일"></div>
				</div>
				</td>
			</tr>			
		    
		    <tr>
			<td><div style="float:left;">전화번호</div>
				<div class="row">
					<div class="4u 12u$(small)">
						<input type="text" name="tel1" id="tel1" value="" size="12" placeholder="010"></div>
					<div class="4u 12u$(small)">
						<input type="text" name="tel2" id="tel2" value="" size="12" placeholder="0000"></div>
					<div class="4u 12u$(small)">
							<input type="text" name="tel3" id="tel3" value="" size="12" placeholder="0000"></div>
				</div>
				</td>
			</tr>

			<tr>
			 <td><div style="float:left;">우편번호</div>
			 <div class="row">
					<div class="4u 12u$(small)">
			 			<input type="text" name="zip1" id="zip1" value="" size="5" maxlength="3"></div>
					<div class="4u 12u$(small)">
						<input type="text" name="zip2" id="zip2" value="" size="5" maxlength="3"></div>
					<div class="4u 12u$(small)">
			 		<input type="button" class="special" value="우편번호검색" onclick="javascript:openzip();"></div>
			 </div>		
			 </td>
			</tr>
			<tr>
			 <td><div style="float:left;">주소</div>
			 <input type="text" name="addr1" id="addr1" value="" size="100"></td>
			</tr>

			<tr>
			 <td><div style="float:left;">상세주소</div>
			 <input type="text" name="addr2" id="addr2" size="100"></td>
			</tr>

            <tr>
			 <td><div style="float:left;">이메일</div>
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
			</div>
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
             <td style="width:50%"><div style="float:left;">학교</div>
             <div class="">
	              <select name="schoolCode">
					<!--<option value="">직접입력</option>-->
		            <option value="">선택</option>
		            <option value="1">서울대학교</option>
					<option value="2">연세대학교</option>
					<option value="3">고려대학교</option>
					</select></div>
	         </td>
	         <td style="width:50%"><div style="float:left;">전공</div>
	         <div class="">
	         	<select name="partCode">
					<!--<option value="">직접입력</option>-->
		            <option value="">선택</option>
		            <option value="1">컴퓨터공학과</option>
					<option value="2">정보통신공학과</option>
					<option value="3">정보보호학과</option>
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
<script>
function nameValidate() {
	var value = $('#name').val();
	var len = value.length;
	var msg = '';
	if (len < 4) {
		msg = '이름은 4글자 이상이여야합니다';
	}
	$('#nameValidateData').text(msg);
}
</script>	