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
	<div class="button special small" id="<%=SearchType.ALL%>"
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
	<div class="button small" id="<%=SearchType.WEB%>"
		onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">��</div>
	<div class="button small" id="<%=SearchType.WEB%>"
		onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">�ѱ�</div>
	<div class="button small" id="<%=SearchType.WEB%>"
		onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this, '<%=keyword%>');">�Ѵ���</div>

</ul>
</div>
<ul class="alt">

	<header class="major" onload="javascript:select();">
		<h3>��α�</h3>
	</header>

	<%
		int blogSize = listDto.getBlogList().size();
		SearchResultBlogDto blogDto;
		for (int i = 0; i < allResultCount; i++) {
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
				<div class="row">
					<div class="12u 12i$(small)"><%=blogDto.getDescription()%></div>
				</div>
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
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.BLOG.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>

	<header class="major">
		<h3>ī��</h3>
	</header>
	<%
		int cafeSize = listDto.getCafeList().size();
		SearchResultCafeDto cafeDto;
		for (int i = 0; i < allResultCount; i++) {
			cafeDto = listDto.getCafeList().get(i);
	%>
	<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="12u 12u$(small)">
						<a href="<%=cafeDto.getOriginLink()%>"><%=cafeDto.getTitle()%></a>
					</div>
				</div>
				<div class="row">
					<div class="12u 12i$(small)"><%=cafeDto.getDescription()%></div>
				</div>
				<div class="row">
					<div class="5u 12$(small)">
						<a href="<%=cafeDto.getHostLink()%>"><%=cafeDto.getHostName()%></a>
					</div>
					<div class="7u 12$(small)">
						<a href="<%=cafeDto.getOriginLink()%>"><%=cafeDto.getOriginLink()%></a>
					</div>
				</div>
			</div>
		</div>
	</li>
	<%
		}
	%>
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.CAFE.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>
	<header class="major">
		<h3>�̹���</h3>
	</header>
	<%
		int imageSize = listDto.getImageList().size();
		SearchResultImageDto imageDto;
		for (int i = 0; i < allResultCount; i++) {
			imageDto = listDto.getImageList().get(i);
	%>
	<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="12u 12u$(small)">
						<a href="<%=imageDto.getOriginLink()%>"><%=imageDto.getTitle()%></a>
					</div>
				</div>
				<div class="row">
					<div class="12u 12i$(small)">
						<image src="<%=imageDto.getThumbNail()%>">
					</div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</li>
	<%
		}
	%>
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.IMAGE.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>
	<header class="major">
		<h3>������</h3>
	</header>
	<%
		int inTipSize = listDto.getInTipList().size();
		SearchResultInTipDto inTipDto;
		for (int i = 0; i < allResultCount; i++) {
			inTipDto = listDto.getInTipList().get(i);
	%>
	<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="12u 12u$(small)">
						<a href="<%=inTipDto.getOriginLink()%>"><%=inTipDto.getTitle()%></a>
					</div>
				</div>
				<div class="row">
					<div class="12u 12i$(small)"><%=inTipDto.getDescription()%></div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</li>
	<%
		}
	%>
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.IN_TIP.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>

	<header class="major">
		<h3>����</h3>
	</header>
	<%
		int dicSize = listDto.getDicList().size();
		SearchResultDicDto dicDto;
		for (int i = 0; i < allResultCount; i++) {
			dicDto = listDto.getDicList().get(i);
	%>
	<li>

		<div class="row">
			<div class="4u 12u$(small)">
				<img src="<%=dicDto.getThumbNail()%>">
			</div>
			<div class="8u 12u$(small)">
				<div class="row">
					<div class="9u 12u$(small)">
						<a href="<%=dicDto.getOriginLink()%>"><%=dicDto.getTitle()%></a>
					</div>
				</div>
				<div class="row">
					<div class="12u 12i$(small)"><%=dicDto.getDescription()%></div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</li>
	<%
		}
	%>
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.DIC.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>

	<header class="major">
		<h3>�����ڷ�</h3>
	</header>
	<%
		int profSize = listDto.getProfList().size();
		SearchResultProfDto profDto;
		for (int i = 0; i < allResultCount; i++) {
			profDto = listDto.getProfList().get(i);
	%>
	<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="12u 12u$(small)">
						<a href="<%=profDto.getOriginLink()%>"><%=profDto.getTitle()%></a>
					</div>
				</div>
				<div class="row">
					<div class="12u 12i$(small)"><%=profDto.getDescription()%></div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</li>
	<%
		}
	%>
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.PROF.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>

	<header class="major">
		<h3>����</h3>
	</header>

	<%
		int newsSize = listDto.getNewsList().size();
		SearchResultNewsDto newsDto;
		for (int i = 0; i < allResultCount; i++) {
			newsDto = listDto.getNewsList().get(i);
	%>
	<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="9u 12u$(small)">
						<a href="<%=newsDto.getOriginLink()%>"><%=newsDto.getTitle()%></a>
					</div>
					<div class="3u 12u$(small)"><%=newsDto.getPostDate()%></div>
				</div>
				<div class="row">
					<div class="12u 12i$(small)"><%=newsDto.getDescription()%></div>
				</div>
				<div class="row">

					<div class="12u 12$(small)">
						<a href="<%=newsDto.getOriginLink()%>"><%=newsDto.getOriginLink()%></a>
					</div>
				</div>
			</div>
		</div>
	</li>
	<%
		}
	%>
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.NEWS.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>
	<header class="major">
		<h3>��</h3>
	</header>
	<%
		int webSize = listDto.getWebList().size();
		SearchResultWebDto webDto;
		for (int i = 0; i < allResultCount; i++) {
			webDto = listDto.getWebList().get(i);
	%>
	<li>

		<div class="row">
			<div class="12u 12u$(small)">
				<div class="row">
					<div class="12u 12u$(small)">
						<a href="<%=webDto.getOriginLink()%>"><%=webDto.getTitle()%></a>
					</div>
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
	<li>
		<div class="row">
			<div class="10u 12u$(small)">&nbsp;</div>
			<div class="2u 12u$(small)">
				<b><a
					href="javascript:selectMoreSearchType('<%=SearchType.WEB.value%>', '<%=keyword%>');">������</a></b>
			</div>
		</div>
	</li>

	<%@ include file="/search/searchrank.jsp"%>

	<%@ include file="/common/menubar_2.jsp"%>




	<!-- 
				<li>

					<div class="row">
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">C++ ���� ���ϸ� �����!</div>
								<div class="3u 12u$(medium)">2017.01.01</div>
							</div>
							<div class="row">
								... c���� <b>c++</b>����� ���̶� ������ ���� ����� �ϴ��� ��... C���� <b>C++</b>
								���赵 ���������Դϴ�. �� ��â�ϰ�... C���� <b>C++</b>����� ���̴� ���α׷��� ����� ��Ŀ�... <b>C++</b>���δ�
								�����ִ� �����Ϳ� ��ɾ �ϳ��� ���� ��ü���...
							</div>
							<div class="row">http://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=018&aid=0003857803</div>
						</div>
					</div>
				</li>

				<li>
					<div class="row">
						<div class="2u 12u$(samll)">thumbnail</div>
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">title</div>
								<div class="3u 12u$(small)">date</div>
							</div>
							<div class="row">description</div>
							<div class="row">originLink</div>
						</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="2u 12u$(samll)">thumbnail</div>
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">title</div>
								<div class="3u 12u$(small)">date</div>
							</div>
							<div class="row">description</div>
							<div class="row">originLink</div>
						</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">
									<b>C++</b> Ŭ������ ����µ� �� �����Ͱ� �������?
								</div>
								<div class="3u 12u$(small)">2016.01.01</div>
							</div>
							<div class="row">
								���� ������Ʈ�� �Ǽ��� <b>C++</b> �ε尡 �ȵǼ� ; �׳� �ٽ� ������� �ߴµ� �ϴ� �׳� �÷��̾���Ʈ�ѷ�
								�� ������� <b>C++</b> Ŭ������ ����µ� Ŭ���� �����縦 ���� ����� ���� ���� �׳� �𸮾��� �����ϴ�
								;; ���ķδ� C...
							</div>
							<div class="row">http://cafe.naver.com/unrealenginekr/14211</div>
						</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">title</div>
								<div class="3u 12u$(small)">date</div>
							</div>
							<div class="row">description</div>
							<div class="row">originLink</div>
						</div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">title</div>
								<div class="3u 12u$(small)">date</div>
							</div>
							<div class="row">description</div>
							<div class="row">originLink</div>
						</div>
					</div>
				</li>
				<li><br> <br> <br> �˻���� <br> �˻���� <br>
					�˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br>
					�˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br>
					�˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br>
					�˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br>
					�˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br> �˻���� <br>
					�˻���� <br>
					 -->