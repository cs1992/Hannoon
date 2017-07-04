<%@page import="com.hannoon.search.model.SearchResultListDto"%>
<%@page import="com.hannoon.util.SearchConstance"%>
<%@page import="com.hannoon.util.SearchConstance.SearchType"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%
 final int MAX_COUNT = 5;
int allResultCount;
String keyword = (String)session.getAttribute(SearchConstance.KEYWROD);
 SearchResultListDto listDto = (SearchResultListDto) session
			.getAttribute(SearchConstance.SEARCH_RESULT_LIST);
String keywordName = SearchConstance.KEYWROD;
String addArticle = SearchConstance.ADD_ARTICLE_IMG;
final int ADD_ARTICLE_IMG_SIZE = 19;
 %>
<script type="text/javascript">
document.searchForm.keyword.value = "<%=keyword%>";
var resultPath = ["/search/webresult.jsp", "/search/blogresult.jsp", "/search/caferesult.jsp", "/search/dicresult.jsp", "/search/imageresult.jsp", "/search/intipresult.jsp", "/search/newsresult.jsp", "/search/profresult.jsp", "/search/testresult.jsp", "/search/hangleresult.jsp", "/search/hannooninresult.jsp"];
var addArticle = "<%=SearchConstance.ADD_ARTICLE%>";
function setResultPath(){
	
}

window.onload=function(){
	startRank();
}
</script>

<div class="row">&nbsp;</div>

	<div class="row">
		<div class="1u 12u$(samll)">·©Å·.. °ø¹é?</div>


		<div class="9u 12$(small)">
			<div class="row">

				