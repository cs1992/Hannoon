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
		idck.innerHTML = "<font color='red'>�ʼ� ���� �Դϴ�.</font>"
		return;
	} else if(document.joinform.name.value == "") {
		nameck = document.getElementById("nameck");
		nameck.innerHTML = "<font color='red'>�ʼ� ���� �Դϴ�.</font>"
		return;
	} else if(document.joinform.birth1.value == "" || document.joinform.birth2.value == "" || document.joinform.birth3.value == "") {
		nameck.innerHTML = ""
		birthck = document.getElementById("birthck");
		birthck.innerHTML = "<font color='red'>�ʼ� ���� �Դϴ�.</font>"
		return;
	} else if(document.joinform.tel1.value == "" || document.joinform.tel2.value == "" || document.joinform.tel3.value == "") {
		birthck.innerHTML = ""
		telck = document.getElementById("telck");
		telck.innerHTML = "<font color='red'>�ʼ� ���� �Դϴ�.</font>"
		return;
	} else if(document.joinform.addr1.value == "" || document.joinform.addr2.value == "") {
		telck.innerHTML = ""
		addrck = document.getElementById("addrck");
		addrck.innerHTML = "<font color='red'>�ʼ� ���� �Դϴ�.</font>"
		return;
	} else if(document.joinform.email1.value == "") {
		addrck.innerHTML = ""
		emailck = document.getElementById("emailck");
		emailck.innerHTML = "<font color='red'>�ʼ� ���� �Դϴ�.</font>"
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
		idck.innerHTML = "<font color='orange'>���̵�� 5�ڸ��̻� 20�� �����Դϴ�.</font>"
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
			alert("�����߻� : " + httpRequest.status);
		}
	}
}

function passwordcheck(){
	pwcheckresult = document.getElementById("pwcheckresult");
	pwlen = document.getElementById("pwlen");
	
	var pw = document.joinform.pw.value;
	var pwcheck = document.joinform.pwcheck.value;
	
	if(pw.length < 6 || pw.length > 16) {
		pwlen.innerHTML = "<font color='orange'>��й�ȣ�� 6�ڸ��̻� 16�� �����Դϴ�.</font>"
	} else {
		pwlen.innerHTML = "";
	}
	
	if(pwcheck != "" && pw != pwcheck) {
		pwcheckresult.innerHTML = "<font color='red'>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</font>"
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
		<button type="button" class="close closeButton" data-dismiss="modal"><span aria-hidden="true">��</span><span class="sr-only">Close</span></button>
		<h1 class="modal-title" id="myModalLabel">Join</h1>
	      </div>
	      <div class="modal-body">
<!-- �� ���� -->

<form name ="joinform" method="post" action="">
	<input type="hidden" name="act" value="join">
	 <table>
			<tr>
				<td>
					<input type="text" name="id" id="id" value="" size="12" placeholder="���̵�" onkeyup="javascript:idcheck();">
					<div id="idresult" style="float:left;"></div>
				</td>
			</tr>

			<tr>
				<td>
	        	<input type="password" name="pw" id="pw" size="12" maxlength="12" placeholder="��й�ȣ" onkeyup="javascript:passwordcheck();">
	        	<div id="pwlen" style="float:left;"></div>
	        	</td>
			</tr>

			<tr>
	        	<td>
	         	<input type="password" name="pwcheck" id="pwcheck" size="12" maxlength="12" placeholder="��й�ȣ ��Ȯ��" onkeyup="javascript:passwordcheck();">
	         	<div id="pwcheckresult" style="float:left;"></div>
	         	</td>
			</tr>
	</table>
	<table>
			<tr>
			 	<td><div style="float:left;">�̸�</div>
			 		<input type="text" name="name" id="name" value="" size="12">
			 		<div id="nameck" style="float:left;"></div>	
			 	</td>
			</tr>
			
			<tr>
				<td>
				<div style="float:left;">����</div>
				<div class="row">
					<div class="4u 12u$(small)">
						<input type="text" name="birth1" id="birth1" value="" size="12" placeholder="�� (4�ڸ�)"></div>
					<div class="4u 12u$(small)">
						<div class="select-wrapper">
							<select name="birth2" id="birth2">
								<option value="">��</option>
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
							<input type="text" name="birth3" id="birth3" value="" size="12" placeholder="��"></div>
				</div>
				<div id="birthck" style="float:left;"></div>	
				</td>
			</tr>			
		    
		    <tr>
			<td><div style="float:left;">��ȭ��ȣ</div>
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
			 			<input type="text" name="zip1" id="sample6_postcode" placeholder="�����ȣ" readonly="readonly"></div>
					<div class="6u 12u$(xsmall)">
			 		<input type="button" onclick="sample6_execDaumPostcode()" value="�����ȣ ã��"></div>
			 </div>		
			 </td>
			</tr>
			<tr>
			 <td>
			 <input type="text" name="addr1" id="sample6_address" placeholder="�ּ�">
			 </td>
			</tr>

			<tr>
			 <td>
			 <input type="text" name="addr2" id="sample6_address2" placeholder="���ּ�">
			 <div id="addrck" style="float:left;"></div>	
			 </td>
			</tr>

            <tr>
			 <td><div style="float:left;">�̸���</div>
			 <div class="row">
			 	<div class="6u 12u$(xsmall)">
			 		<input type="text" name="email1" value="" size="12"></div>
					<!--<input type="text" name="direct" value="" size=12>-->
				<div class="6u 12u$(xsmall)">
	                <select name="email2">
					<!--<option value="naver.com">�����Է�</option>-->
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
			 <td class="td2">����<font color="red">*</font></td> 
	         <td class="td4"><input type="radio" name="gender" value="��" checked>����
        	        <input type="radio" name="gender" value="��">����</td>
			</tr>
-->
</table>
<table>
			<tr>
             <td style="width:50%"><div style="float:left;">�б�</div>
             <div class="">
	              <select name="schoolCode">
					<!--<option value="">�����Է�</option>-->
		            <option value="0">���þ���</option>
		            <option value="1">������б�</option>
					<option value="2">�������б�</option>
					<option value="3">������б�</option>
					<option value="4">���հ����б�</option>
					<option value="5">�Ѿ���б�</option>
					</select></div>
	         </td>
	         <td style="width:50%"><div style="float:left;">����</div>
	         <div class="">
	         	<select name="partCode">
					<!--<option value="">�����Է�</option>-->
		            <option value="0">���þ���</option>
		            <option value="1">�濵�а�</option>
					<option value="2">�����а�</option>
					<option value="3">��������а�</option>
					<option value="4">��ǻ�Ͱ��а�</option>
					<option value="5">ȭ�а��а�</option>
					</select></div>
	         </td>
	   		</tr>
	</table>
		<div class="row">
		<div class="4u 12u$(small)">&nbsp;</div>
		<div class="4u 12u$(small)">
		<input type="button" class="special" value="ȸ������" onclick="javascript:join();">
		<input type="reset" value="���">
		</div>
		
		
		</div>
    	
	</form>

<!-- �� �� -->
      </div>
    </div>
  </div>
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullAddr = ''; // ���� �ּ� ����
                var extraAddr = ''; // ������ �ּ� ����

                // ����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                    fullAddr = data.roadAddress;

                } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                    fullAddr = data.jibunAddress;
                }

                // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����Ѵ�.
                if(data.userSelectedType === 'R'){
                    //���������� ���� ��� �߰��Ѵ�.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // �ǹ����� ���� ��� �߰��Ѵ�.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // �������ּ��� ������ ���� ���ʿ� ��ȣ�� �߰��Ͽ� ���� �ּҸ� �����.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById('sample6_postcode').value = data.zonecode; //5�ڸ� �������ȣ ���
                document.getElementById('sample6_address').value = fullAddr;

                // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>