<%@page import="com.hannoon.util.SearchConstance"%>
<%@page import="com.hannoon.search.model.SearchLogDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.List"%>
<%
List<SearchLogDto> list = (List<SearchLogDto>) request.getAttribute("rank");
SearchLogDto searchLogDto;
if(list != null) {
%>

<%
	int len = list.size();
	for(int i = 0; i < len; i++){
		searchLogDto = list.get(i);
%>
<div class="row" id="<%=SearchConstance.KEYWORD_RANK + i%>"  onmouseover="javascript:selInborder('<%=i %>');" onmouseout="javascript:selOutborder('<%=i %>');">
	
	<div class="1u 12u$(small)"><%=i + 1 %></div>
	<div class="8u 12u$(small)"><a href="javascript:searchWithKeyword('<%=searchLogDto.getKeyword() %>');"><%=searchLogDto.getKeyword() %></a></div>
	<div class="2u 12u$(small)">&nbsp;</div>
	
</div>

<%
	}
}
%>






<%--
<table width="160">
<%
	int len = list.size();
	for(int i=0;i<len;i++) {
		SearchLogDto searchLogDto = list.get(i);
%>
<tr onmouseover="javascript:selinborder('<%=i %>');" onmouseout="javascript:seloutborder('<%=i %>');">
	<td>
	<table id="tid<%=i%>">
	<tr>
		<td width="20"><%=i + 1 %></td>
		<td width="120">
		<a href="javascript:search('<%=searchLogDto.getKeyword() %>');">
		<%=searchLogDto.getKeyword() %>
		</a>
		</td>
		<td><%=searchLogDto.getHit() %></td>
	</tr>
	</table>
	</td>
</tr>
<%		
	}
%>
</table>
<%
}
%>
 --%>