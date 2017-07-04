<%@page import="com.hannoon.util.SearchConstance"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		</ul>
			
			</div>
			

		<div class="2u 12u$(small)">
			<div class="row">
				<div class="row"><b>인기검색어</b></div>
				<ul class="alt" id="<%=SearchConstance.KEYWORD_RANK%>"></ul>
				<div class="row" id="<%=SearchConstance.KEYWORD_RANK%>"></div>
				<!-- 인기검색<br>1. 자바<br>2. 자바 변수<br>3. C++<br>4. C<br>..... -->
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