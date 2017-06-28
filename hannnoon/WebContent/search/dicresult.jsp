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
					<div class="button special small" id="<%=SearchType.DIC%>"
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
					<h3>����</h3>
				</header>
				<%
					int dicSize = listDto.getDicList().size();
					SearchResultDicDto dicDto;
					for (int i = 0; i < dicSize; i++) {
						dicDto = listDto.getDicList().get(i);
				%>
				<li>

					<div class="row">
						<div class="4u 12u$(small)"><img src="<%=dicDto.getThumbNail()%>"></div>
						<div class="8u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">
									<a href="<%=dicDto.getOriginLink()%>"><%=dicDto.getTitle()%></a>
								</div>
							</div>
							<div class="row"><div class="12u 12i$(small)"><%=dicDto.getDescription()%></div></div>
							<div class="row">
							
							</div>
						</div>
					</div>
				</li>
				<%
					}
				%>
			
				
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