<%@ page language="java" contentType="text/plain; charset=EUC-KR"
    pageEncoding="EUC-KR"%> <!-- 위에 text/plain으로 바꺼줌 -->
<%
String sid = request.getParameter("sid");
int count = Integer.parseInt(request.getParameter("count"));
if(count == 0) {
%>
<font color="blue"> &nbsp; 멋진 아이디네요! :-) </font>
<%
} else {
%>
<font color="red"> &nbsp; 이미 사용중인 아이디에요 ㅠㅡㅠ </font>
<%	
}
%>