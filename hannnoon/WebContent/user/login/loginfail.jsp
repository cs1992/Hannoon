<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  �츮�� �ٹ� �� ���� �����г� -->
<center>
<table>
<tr>
	<td colspan="2" align="right">
	<input type="checkbox" name="idsv" value="idsave" >���̵�����
	</td>
</tr>
<tr>
	<td class="td1">���̵�</td>
	<td class="td3"><input type="text" name="id" id="id" value=""></td>
</tr>
<tr>
	<td class="td2">��й�ȣ</td>
	<td class="td4"><input type="password" name="pass" id="pass"></td>
</tr>
<tr>
	<td colspan="2" align="center">
	<input type="button" value="�α���" onclick="javascript:logincheck();">
	<input type="button" value="ȸ������" onclick="javascript:joinmove();">
	</td>
</tr>
</table>
</center>

<!--  �����г� �� -->
</div>

<%@ include file="/common/menubar_2.jsp"%>

</div>

</body>
</html>