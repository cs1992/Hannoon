<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.hannoon.study.model.StudyRoomDto"%>
<%--<%@ include file="/search/testpublic.jsp"%> --%>

<%
String menubarRoot = request.getContextPath();
StudyRoomDto SRD = new  StudyRoomDto();
String StudyName= SRD.getStudy_name();
System.out.println(StudyName);
%>
<script>
	function modiftTitle(seq) {
		$("#nameForm" + seq).css('display', 'block');
	}

	
</script>


<script type="text/javascript">

	function addStudyRoom() {
		//alert("한눈방 만드는 모달창 띄우기고 한눈방 추기하기");
		var li = document.createElement('li'); // DIV 객체 생성
		var idx = 0;
		li.setAttribute('study', 'li' + idx);
		li.innerHTML = document.getElementById("study").value;
		document.getElementById('study').appendChild(li);
		idx++;

	
	
		document.location.href= "<%=menubarRoot%>/StudyController?act=menu";
		document.study.submit();
		
		

		//$('#study').append('<li><a href="<%=menubarRoot%>/StudyController?act=menu"><%=StudyName%></a></li>');

	//document.menubarForm.action = "<%=menubarRoot%>/search";
	//document.menubarForm.act.value = "mvStudyRoom";
	//document.menubarForm.submit();
	}

	function addGroupRoom() {
		//alert("그룹방 만드는 모달창 띄우기고 그룹방 추기하기");
		$('#group').append('<li><a href="<%=menubarRoot%>/">그룹방이름</a></li>');

	//document.menubarForm.action = "<%=menubarRoot%>/search";
	//document.menubarForm.act.value = "mvStudyRoom";
	//document.menubarForm.submit();
	}
</script>


<form name="menubarForm" method="get" action="">
	<input type="hidden" name="act" value="">

</form>

</div>
</div>

<!-- Sidebar -->
<div id="sidebar">
	<div class="inner">

		<!-- Search -->
		<section id="search" class="alt">
			<form method="post" action="#">
				<input type="text" name="query" id="query" placeholder="Search" />
			</form>
		</section>



		<!-- Menu -->
		<nav id="menu">
			<header class="major">
				<h2>Menu</h2>
			</header>
			<ul>
				<li><a href="<%=menubarRoot%>/board/notice/list.jsp">공지사항</a></li>
				<li><span class="opener">내한눈방</span>
					<ul id="study">
						<!-- <li><a onclick="addStudyRoom()">+ 한눈방</a></li>  -->
						<!-- 이걸 누르면 모달창 -->
						<li><a onclick="addStudyRoom()" data-toggle="modal"
							data-target="#myModal2">+ 한눈방</a></li>
						<!-- 이걸 누르면 모달창 -->
					</ul></li>
				<li><span class="opener">내그룹방</span>
					<ul id="group">
						<li><a onclick="addGroupRoom()">+ 그룹방</a></li>
						<!-- 이걸 누르면 모달창 -->

					</ul></li>


				<li><span class="opener">전공인</span>
					<ul id="">
						<li><a href="">컴퓨터</a></li>
						<li><a href="">소프트웨어</a></li>
						<li><a href="">경제</a></li>
					</ul></li>
				<li><a href="<%=menubarRoot%>/hannoonin/hannooninmain.jsp">한눈인</a></li>
				<li><a href="<%=menubarRoot%>/cafe/cafemap_2.jsp">스터디카페</a></li>

				<li><a href="#">마이페이지</a></li>
				<li><span class="opener">관리</span>
					<ul id="">
						<li><a href="<%=menubarRoot%>/admin?act=list">회원관리</a></li>
						<li><a href="<%=menubarRoot%>/admin/stat/index.jsp">통계</a></li>
					</ul></li>
			</ul>
		</nav>


		<!-- Footer -->
		<footer id="footer">
			<p class="copyright">
				&copy; Untitled. All rights reserved. Demo Images: <a
					href="https://unsplash.com">Unsplash</a>. Design: <a
					href="https://html5up.net">HTML5 UP</a>.
			</p>
		</footer>

	</div>
</div>

</div>


</body>
</html>