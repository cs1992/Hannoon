<%@ page language="java" contentType="text/plain; charset=EUC-KR"
    pageEncoding="EUC-KR"%> <!-- ���� text/plain���� �ٲ��� -->
<%
String sid = request.getParameter("sid");
int count = Integer.parseInt(request.getParameter("count"));
if(count == 0) {
%>
<font color="blue"> &nbsp; ���� ���̵�׿�! :-) </font>
<%
} else {
%>
<font color="red"> &nbsp; �̹� ������� ���̵𿡿� �ФѤ� </font>
<%	
}
%>