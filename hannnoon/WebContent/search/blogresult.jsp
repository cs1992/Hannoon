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
<%
	SearchResultListDto listDto = (SearchResultListDto) request
			.getAttribute(SearchConstance.SEARCH_RESULT_LIST);

String keyword = (String)request.getAttribute(SearchConstance.KEYWROD);

%>
<section>


	<div class="row">
		<div class="1u 12u$(samll)">��ŷ.. ����?</div>


		<div class="9u 12$(small)">
			<div class="row"
				onload="javascript:javascript:selectSearchType('<%=SearchType.ALL%>', this, '<%=keyword%>');">

				<ul class="actions">
					<div class="button small" id="<%=SearchType.ALL%>"
						onclick="javascript:selectSearchType('<%=SearchType.ALL.value%>', this, '<%=keyword%>');">��ü</div>
					<div class="button special small" id="<%=SearchType.BLOG%>"
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
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">��</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">�ѱ�</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">�Ѵ���</div>

				</ul>
			</div>
			
			<ul class="alt">

				<header class="major">
					<h3>��α�</h3>
				</header>

				<%
				
					int blogSize = listDto.getBlogList().size();
					SearchResultBlogDto blogDto;
					for (int i = 0; i < blogSize; i++) {
						blogDto = listDto.getBlogList().get(i);
				%>
				<li>

					<div class="row">
						<div class="12u 12u$(small)">
							<div class="row">
								<div class="10u 12u$(small)">
									<a href="<%=blogDto.getOriginLink()%>"><%=blogDto.getTitle()%></a>
								</div>
								<div class="2u 12u$(small)"><%=blogDto.getPostDate()%></div>
							</div>
							<div class="row"><div class="12u 12i$(small)"><%=blogDto.getDescription()%></div></div>
							<div class="row">
								<div class="4u 12$(small)">
									<a href="<%=blogDto.getHostLink()%>"><%=blogDto.getAuthor()%></a>
								</div>
								<div class="8u 12$(small)">
									<a href="<%=blogDto.getOriginLink()%>"><%=blogDto.getOriginLink()%></a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<%
					}
				%>

			</ul>
			</div>
			

		<div class="2u 12u$(small)">
			<div class="row">
				�α�˻�<br>1. �ڹ�<br>2. �ڹ� ����<br>3. C++<br>4. C<br>.....
			</div>
			<br>
			<div class="row">
				�α� ���ι� ��ŷ<br>1. �ڹٸ� ��ƶ�!!<br>2. Java Master<br>3. C
				Bar<br>4. ö��������<br>.....
			</div>

			<br>
			<div class="row">
				�� ���ι� ��ŷ<br>1. �ڹٸ� ��ƶ�!!<br>2. Java Master<br>3. C
				Bar<br>4. ö��������<br>.....
			</div>
		</div>
	</div>
</section>

<%@ include file="/common/menubar_2.jsp"%>