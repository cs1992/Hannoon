<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
String hnl = request.getContextPath();

Cookie cookie[] = request.getCookies();
String saveid = "";
String idck = "";
if(cookie != null){ //�׻� nullüũ �Ұ�!
	int len = cookie.length;
	for(int i=0; i<len; i++){
		if("kid_sid".equals(cookie[i].getName())) { //�ش��ϴ� ��Ű�� ������
			saveid = cookie[i].getValue(); //����
			idck = " checked =\"checked\" ";
			break;
		}
	}
}
%>
<script type="text/javascript">
function logincheck(){
	if(document.loginform.id.value == "") {
		alert("���̵� �Է�!");
		return;
	} else if(document.loginform.pw.value == "") {
		alert("��й�ȣ �Է�!");
		return;
	} else {
		document.loginform.action = "<%=hnl%>/user";
		document.loginform.submit();
	}
}
function joinmove(){
	document.loginform.action = "<%=hnl%>/user?act=mvjoin";
}
</script>

<style>
#modal_login .modal-dialog{
	width: 20%;
}
</style>

 	<div class="modal fade" id="modal_login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
		<button type="button" class="close closeButton" data-dismiss="modal" aria-labe="Close"><span aria-hidden="true">��</span><span class="sr-only">Close</span></button>
		<h1 class="modal-title" id="myModalLabel">Login</h1>
	      </div>
	      <div class="modal-body">
<!-- �� ���� -->

<form name="loginform" method="post" action="#">
<input type="hidden" name="act" value="login">

	<div style="float:right;">
		<input type="checkbox" name="idsv" value="idsave" <%=idck%> id="idsv"> 
		<label for="idsv">���̵� ����</label>
	</div>
	
	<table>
	<tr>
		<td>
			<div class="">
				<input type="text" name="id" id="id" value="<%=saveid%>" placeholder="Username" />
			</div>
		</td>
		
	</tr>
	<tr>
		<td>
			<div class="">
				<input type="password" name="pw" id="pw" value="" placeholder="Password" />
			</div>
		</td>
	</tr>
	</table>
	
	<button type="button" class="button special fit" value="�α���" onclick="javascript:logincheck();">�α���</button>
	<button type="button" class="button fit" data-dismiss="modal">������</button>
	<div style="float:right;"><a href="javascript:;" data-toggle="modal" data-target="#modal_join" onclick="modal_login_close()">���� �Ѵ����� �ƴϼ���?</a></div>
	</form>
	<!-- �� �� -->
      </div>
    </div>
  </div>
</div>
