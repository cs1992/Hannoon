<%@page import="com.hannoon.search.model.SearchResultListDto"%>
<%@page import="com.hannoon.util.SearchConstance"%>
<%@page import="com.hannoon.util.SearchConstance.SearchType"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%
int allResultCount = 5;
String keyword = (String)request.getAttribute(SearchConstance.KEYWROD);
 SearchResultListDto listDto = (SearchResultListDto) request
			.getAttribute(SearchConstance.SEARCH_RESULT_LIST);
String keywordName = SearchConstance.KEYWROD;
 %>
<script type="text/javascript">
document.searchForm.keyword.value = "<%=keyword%>";
</script>

<div class="row">&nbsp;</div>

	<div class="row">
		<div class="1u 12u$(samll)">·©Å·.. °ø¹é?</div>


		<div class="9u 12$(small)">
			<div class="row">

				