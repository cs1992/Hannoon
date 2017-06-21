<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
function join(){
	if(document.getElementById("id").value == "") {
		alert("아이디 입력!");
		return;
	} else if(document.getElementById("name").value == "") {
		alert("이름 입력!");
		return;
	} else if(document.getElementById("pass").value  == "") {
		alert("비밀번호 입력!");
		return;
	} else if(document.getElementById("pass").value != document.getElementById("passcheck").value) {
		alert("비밀번호 확인!");
		return;
	} else {
		document.joinform.action = "hannoon/user";
		document.joinform.submit();
	}
}

function openzip(){
	window.open("hannoon/user?act=mvzip","zip","top=200, left=300, width=400, height=300, menubar=no, status=no, toolbar=no, location=no, scrollbars=yes");
}

function openidcheck(){
	window.open("hannoon/user?act=mvidck","idck","top=200, left=300, width=400, height=180, menubar=no, status=no, toolbar=no, location=no, scrollbars=no");
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
			 		<input type="text" name="name" id="name" value="" size="12" onkeyDown="nameValidate()">
			 		<div id="nameValidateData"></div>	
			 	</td>
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
   <center>
             <input type="button" class="special" value="회원가입" onclick="javascript:join();">
	         <input type="reset" value="취소">
   </center>
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