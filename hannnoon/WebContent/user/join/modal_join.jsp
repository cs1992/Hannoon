<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String hnj = request.getContextPath();
%>
<script type="text/javascript" src="<%=hnj%>/js/myajax.js"></script>
<script type="text/javascript">
var idck, pwlen, pwcheckresult, nameck, birthck, telck, addrck, emailck;

function join(){
	//if(document.joinform.id.value == "") {
	//if(document.getElementById("id").value == "") {
	if(document.joinform.id.value == "") {
		idck = document.getElementById("nameck");
		idck.innerHTML = "<font color='red'>필수 정보 입니다.</font>"
		return;
	} else if(document.joinform.name.value == "") {
		nameck = document.getElementById("nameck");
		nameck.innerHTML = "<font color='red'>필수 정보 입니다.</font>"
		return;
	} else if(document.joinform.birth1.value == "" || document.joinform.birth2.value == "" || document.joinform.birth3.value == "") {
		nameck.innerHTML = ""
		birthck = document.getElementById("birthck");
		birthck.innerHTML = "<font color='red'>필수 정보 입니다.</font>"
		return;
	} else if(document.joinform.tel1.value == "" || document.joinform.tel2.value == "" || document.joinform.tel3.value == "") {
		birthck.innerHTML = ""
		telck = document.getElementById("telck");
		telck.innerHTML = "<font color='red'>필수 정보 입니다.</font>"
		return;
	} else if(document.joinform.addr1.value == "" || document.joinform.addr2.value == "") {
		telck.innerHTML = ""
		addrck = document.getElementById("addrck");
		addrck.innerHTML = "<font color='red'>필수 정보 입니다.</font>"
		return;
	} else if(document.joinform.email1.value == "") {
		addrck.innerHTML = ""
		emailck = document.getElementById("emailck");
		emailck.innerHTML = "<font color='red'>필수 정보 입니다.</font>"
		return;
	} else {
		document.joinform.action = "<%= hnj %>/user";
		document.joinform.submit();
	}
}

	function idcheck(){
	idck = document.getElementById("idresult");
	var idval = document.joinform.id.value;
	
	if(idval.length < 5 || idval.length > 20) {
		idck.innerHTML = "<font color='orange'>아이디는 5자리이상 20자 이하입니다.</font>"
	} else {
		var param = "act=idsearch&id=" + encodeURI(idval);
		sendRequest("<%=hnj%>/user", param, idresult, "GET");
	}
}

function idresult() {
	if(httpRequest.readyState == 4) {
		if(httpRequest.status == 200) {
			var txt = httpRequest.responseText;
			idck.innerHTML = txt;
		} else {
			alert("문제발생 : " + httpRequest.status);
		}
	}
}

function passwordcheck(){
	pwcheckresult = document.getElementById("pwcheckresult");
	pwlen = document.getElementById("pwlen");
	
	var pw = document.joinform.pw.value;
	var pwcheck = document.joinform.pwcheck.value;
	
	if(pw.length < 6 || pw.length > 16) {
		pwlen.innerHTML = "<font color='orange'>비밀번호는 6자리이상 16자 이하입니다.</font>"
	} else {
		pwlen.innerHTML = "";
	}
	
	if(pwcheck != "" && pw != pwcheck) {
		pwcheckresult.innerHTML = "<font color='red'>비밀번호가 일치하지 않습니다.</font>"
	} else {
		pwcheckresult.innerHTML = "";
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
	        	<input type="password" name="pw" id="pw" size="12" maxlength="12" placeholder="비밀번호" onkeyup="javascript:passwordcheck();">
	        	<div id="pwlen" style="float:left;"></div>
	        	</td>
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
			 		<input type="text" name="name" id="name" value="" size="12">
			 		<div id="nameck" style="float:left;"></div>	
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
								<option value="<%="0"+m%>"><%out.print("0"+m);%></option>
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
				<div id="birthck" style="float:left;"></div>	
				</td>
			</tr>			
		    
		    <tr>
			<td><div style="float:left;">전화번호</div>
				<div class="row">
					<div class="4u 12u$(small)">
						<select name="tel1">
			            <option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						</select></div>
					<div class="4u 12u$(small)">
						<input type="text" name="tel2" id="tel2" value="" size="12" placeholder="0000"></div>
					<div class="4u 12u$(small)">
							<input type="text" name="tel3" id="tel3" value="" size="12" placeholder="0000"></div>
				</div>
				<div id="telck" style="float:left;"></div>	
				</td>
			</tr>

			<tr>
			 <td>
			 <div class="row">
					<div class="6u 12u$(xsmall)">
			 			<input type="text" name="zip1" id="sample6_postcode" placeholder="우편번호" readonly="readonly"></div>
					<div class="6u 12u$(xsmall)">
			 		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></div>
			 </div>		
			 </td>
			</tr>
			<tr>
			 <td>
			 <input type="text" name="addr1" id="sample6_address" placeholder="주소">
			 </td>
			</tr>

			<tr>
			 <td>
			 <input type="text" name="addr2" id="sample6_address2" placeholder="상세주소">
			 <div id="addrck" style="float:left;"></div>	
			 </td>
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
					<option value="@gmail.com">@gmail.com</option>
					</select></div>
			</div>
			<div id="emailck" style="float:left;"></div>	
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
		            <option value="0">선택안함</option>
		            <option value="1">서울대학교</option>
					<option value="2">연세대학교</option>
					<option value="3">고려대학교</option>
					<option value="4">성균관대학교</option>
					<option value="5">한양대학교</option>
					</select></div>
	         </td>
	         <td style="width:50%"><div style="float:left;">전공</div>
	         <div class="">
	         	<select name="partCode">
					<!--<option value="">직접입력</option>-->
		            <option value="0">선택안함</option>
		            <option value="1">경영학과</option>
					<option value="2">교육학과</option>
					<option value="3">수학통계학과</option>
					<option value="4">컴퓨터공학과</option>
					<option value="5">화학공학과</option>
					</select></div>
	         </td>
	   		</tr>
	</table>
		<div class="row">
		<div class="4u 12u$(small)">&nbsp;</div>
		<div class="4u 12u$(small)">
		<input type="button" class="special" value="회원가입" onclick="javascript:join();">
		<input type="reset" value="취소">
		</div>
		
		
		</div>
    	
	</form>

<!-- 폼 끝 -->
      </div>
    </div>
  </div>
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>