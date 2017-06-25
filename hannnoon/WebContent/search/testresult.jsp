<%@page import="com.hannoon.search.model.SearchResultCafeDto"%>
<%@page import="com.hannoon.search.model.SearchResultBlogDto"%>
<%@page import="com.hannoon.search.model.SearchResultListDto"%>
<%@page import="com.hannoon.util.SearchConstance.SearchType"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="/search/testheader.jsp"%>
<%
	SearchResultListDto listDto = (SearchResultListDto) request
			.getAttribute(SearchConstance.SEARCH_RESULT_LIST);
%>
<script type="text/javascript">

	function selectSearchType(type, el) {
		var past = document.getElementsByClassName("button special small")[0];
		if (past != el) {
			past.className = "button small";
			//isSelected[type] = true;
			//#f56a6a
			//el.style.backgroundColor = "#f56a6a";
			el.className = "button special small";
		}
	}
</script>
<section>


	<div class="row">
		<div class="1u 12u$(samll)">랭킹.. 공백?</div>


		<div class="9u 12$(small)">
			<div class="row"
				onload="javascript:javascript:selectSearchType('<%=SearchType.ALL.value%>', this);">

				<ul class="actions">
					<div class="button special small" id="<%=SearchType.ALL%>"
						onclick="javascript:selectSearchType('<%=SearchType.ALL.value%>', this);">All</div>
					<div class="button small" id="<%=SearchType.BLOG%>"
						onclick="javascript:selectSearchType('<%=SearchType.BLOG.value%>', this);">Blog</div>
					<div class="button small" id="<%=SearchType.CAFE%>"
						onclick="javascript:selectSearchType('<%=SearchType.CAFE.value%>', this);">Cafe</div>
					<div class="button small" id="<%=SearchType.IMAGE%>"
						onclick="javascript:selectSearchType('<%=SearchType.IMAGE.value%>', this);">Image</div>
					<div class="button small" id="<%=SearchType.IN_TIP%>"
						onclick="javascript:selectSearchType('<%=SearchType.IN_TIP.value%>', this);">Knowledge</div>
					<div class="button small" id="<%=SearchType.DIC%>"
						onclick="javascript:selectSearchType('<%=SearchType.DIC.value%>', this);">Dic</div>
					<div class="button small" id="<%=SearchType.PROF%>"
						onclick="javascript:selectSearchType('<%=SearchType.PROF.value%>', this);">Proffession</div>
					<div class="button small" id="<%=SearchType.NEWS%>"
						onclick="javascript:selectSearchType('<%=SearchType.NEWS.value%>', this);">News</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this);">Web</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this);">HanGle</div>
					<div class="button small" id="<%=SearchType.WEB%>"
						onclick="javascript:selectSearchType('<%=SearchType.WEB.value%>', this);">HannoonIn</div>

				</ul>
			</div>
			
			<ul class="alt">

				<header class="major">
					<h3>Blog</h3>
				</header>

				<%
					int blogSize = listDto.getBlogList().size();
					SearchResultBlogDto blogDto;
					for (int i = 0; i < blogSize; i++) {
						blogDto = listDto.getBlogList().get(i);
				%>
				<li>

					<div class="row">
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">
									<a href="<%=blogDto.getOriginLink()%>"><%=blogDto.getTitle()%></a>
								</div>
								<div class="3u 12u$(medium)"><%=blogDto.getPostDate()%></div>
							</div>
							<div class="row"><%=blogDto.getDescription()%></div>
							<div class="row">
								<div class="2u 12$(small)">
									<a href="<%=blogDto.getHostLink()%>"><%=blogDto.getAuthor()%></a>
								</div>
								<div class="10u 12$(small)">
									<a href="<%=blogDto.getOriginLink()%>"><%=blogDto.getOriginLink()%></a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<%
					}
				%>

				<header class="major">
					<h3>Cafe</h3>
				</header>
				<%
					int cafeSize = listDto.getCafeList().size();
					SearchResultCafeDto cafeDto;
					for (int i = 0; i < cafeSize; i++) {
						cafeDto = listDto.getCafeList().get(i);
				%>
				<li>

					<div class="row">
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">
									<a href="<%=cafeDto.getOriginLink()%>"><%=cafeDto.getTitle()%></a>
								</div>
							</div>
							<div class="row"><%=cafeDto.getDescription()%></div>
							<div class="row">
								<div class="2u 12$(small)">
									<a href="<%=cafeDto.getHostLink()%>"><%=cafeDto.getHostName()%></a>
								</div>
								<div class="10u 12$(small)">
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
						<div class="10u 12u$(small)">
							<div class="row">
								<div class="9u 12u$(small)">C++ 이해 못하면 어려워!</div>
								<div class="3u 12u$(medium)">2017.01.01</div>
							</div>
							<div class="row">
								... c언어와 <b>c++</b>언어의 차이랑 무엇을 먼저 배워야 하는지 좀... C언어와 <b>C++</b>
								관계도 마찬가지입니다. 뭐 거창하게... C언어와 <b>C++</b>언어의 차이는 프로그램을 만드는 방식에... <b>C++</b>언어로는
								관련있는 데이터와 명령어를 하나로 묶어 객체라는...
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
									<b>C++</b> 클래스를 만드는데 왜 에디터가 뻗을까요?
								</div>
								<div class="3u 12u$(small)">2016.01.01</div>
							</div>
							<div class="row">
								이전 프로젝트가 실수로 <b>C++</b> 로드가 안되서 ; 그냥 다시 만들려고 했는데 일단 그냥 플레이어컨트롤러
								를 기반으로 <b>C++</b> 클래스를 만드는데 클래스 마법사를 통해 만들고 제작 도중 그냥 언리얼이 뻗습니다
								;; 이후로는 C...
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
				<li><br> <br> <br> 검색결과 <br> 검색결과 <br>
					검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br>
					검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br>
					검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br>
					검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br>
					검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br> 검색결과 <br>
					검색결과 <br>
			</ul>

		</div>

		<div class="2u 12u$(small)">
			<div class="row">
				인기검색<br>1. 자바<br>2. 자바 변수<br>3. C++<br>4. C<br>.....
			</div>
			<br>
			<div class="row">
				인기 공부방 랭킹<br>1. 자바를 잡아라!!<br>2. Java Master<br>3. C
				Bar<br>4. 철학의이해<br>.....
			</div>

			<br>
			<div class="row">
				핫 공부방 랭킹<br>1. 자바를 잡아라!!<br>2. Java Master<br>3. C
				Bar<br>4. 철학의이해<br>.....
			</div>
		</div>
	</div>
</section>

<%@ include file="/search/testmenubar.jsp"%>