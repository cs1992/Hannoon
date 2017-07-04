<%@page import="com.hannoon.search.model.SearchResultWebDto"%>
<%@page import="com.hannoon.search.model.SearchResultNewsDto"%>
<%@page import="com.hannoon.search.model.SearchResultProfDto"%>
<%@page import="com.hannoon.search.model.SearchResultDicDto"%>
<%@page import="com.hannoon.search.model.SearchResultImageDto"%>
<%@page import="com.hannoon.search.model.SearchResultInTipDto"%>
<%@page import="com.hannoon.search.model.SearchResultCafeDto"%>
<%@page import="com.hannoon.search.model.SearchResultBlogDto"%>
<%@page import="com.hannoon.search.model.SearchResultListDto"%>
<%@page import="com.hannoon.util.SearchConstance.SearchType"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="/common/header.jsp"%>
<%@ include file="/search/searchheader.jsp"%>
				<ul class="actions">
					<div class="button small" id="<%=SearchType.ALL%>"
						onclick="javascript:selectSearchType('<%=SearchType.ALL.value%>', this, '<%=keyword%>');">��ü</div>
					<div class="button small" id="<%=SearchType.BLOG%>"
						onclick="javascript:selectSearchType('<%=SearchType.BLOG.value%>', this, '<%=keyword%>');">��α�</div>
					<div class="button small" id="<%=SearchType.CAFE%>"
						onclick="javascript:selectSearchType('<%=SearchType.CAFE.value%>', this, '<%=keyword%>');">ī��</div>
					<div class="button small" id="<%=SearchType.IMAGE%>"
						onclick="javascript:selectSearchType('<%=SearchType.IMAGE.value%>', this, '<%=keyword%>');">�̹���</div>
					<div class="button small" id="<%=SearchType.IN_TIP%>"
						onclick="javascript:selectSearchType('<%=SearchType.IN_TIP.value%>', this, '<%=keyword%>');">������</div>
					<div class="button small" id="<%=SearchType.DIC%>"
						onclick="javascript:selectSearchType('<%=SearchType.DIC.value%>', this, '<%=keyword%>');">����</div>
					<div class="button small" id="<%=SearchType.PROF%>"
						onclick="javascript:selectSearchType('<%=SearchType.PROF.value%>', this, '<%=keyword%>');">�����ڷ�</div>
					<div class="button small" id="<%=SearchType.NEWS%>"
						onclick="javascript:selectSearchType('<%=SearchType.NEWS.value%>', this, '<%=keyword%>');">����</div>
					<div class="button special small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">��</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">�ѱ�</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">�Ѵ���</div>

				</ul>
			</div>
			
			<ul class="alt">

		
				
							<header class="major">
					<h3>��</h3>
				</header>
				<%
					int webSize = listDto.getWebList().size();
					SearchResultWebDto webDto;
					for (int i = 0; i < webSize; i++) {
						webDto = listDto.getWebList().get(i);
				%>
			<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="11u 12u$(small)">
						<a href="<%=webDto.getOriginLink()%>"><%=webDto.getTitle()%></a>
					</div>
					<div class="1u 12u$(small)"><img src="<%=root%>/template/images/<%=SearchConstance.ADD_ARTICLE_IMG %>" width="<%=ADD_ARTICLE_IMG_SIZE%>" onclick="javascript:displayAddArticle(<%=i%>, this);"/></div>
			
				</div>
				<div class="row">
					<div class="12u 12i$(small)"><%=webDto.getDescription()%></div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</li>
				<%
					}
				%>
				
		
	<%@ include file="/search/searchrank.jsp"%>

<%@ include file="/common/menubar_2.jsp"%>