<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/header.jsp" %>
<%@ include file="/common/page.jsp" %>

<%
String gseq = (String) request.getAttribute("gseq");
if(gseq != null) {
%>
<scrpit>
control = "/hannoonin";
</scrpit>
<!-- �츮�� ����κ� ����!! -->

<!-- UI�۾��Ҷ� ��ü���� Ʋ�� ��� div�±׷� ������ֱ� -->

 <div class="row"> <!-- �Ѱ��� �߰� ��üũ�� 12 -->
 	
 	<!-- �������� ���� �ϰ� ������ -->
 	<div class="1u 12u$(small)">
 	</div>
 	
 	<table>
 	<div class="10u 12u$(small)">
	<tr>
		<td class="bg_menu" width="100%" style="padding: 25px" height="35"
			align="center"><b>�Խù��� ��ϵǾ����ϴ�.</b><br>
		<br>
		<div align="center">
			<a href="javascript:viewArticle('<%=gseq%>');">
			<input type="button spceial" width="91" height="21"
			border="0" align="absmiddle" alt="�ۼ��� �� Ȯ��" hspace="10">
			</a>
			<a href="javascript:listArticle('<%=pg%>');">
			<input type="button spceial" width="62" height="21" border="0" align="absmiddle" alt="��Ϻ���"
			hspace="10">
			</a>
		</div>
		</td>
	</tr>	
 	</div>
 	</table>
 	
 	<div class="1u 12u$(small)">
 	</div>
 	
 	
 </div>


<!-- �츮�� ����κ� ��!! -->

<%
} else {
%>
<script>
alert("�������� URL�����Դϴ�.");
document.location.href = "<%=root%>";
</script>
<%		
}
%>
<%@ include file="/common/menubar_2.jsp"%>

