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
		//alert("�Ѵ��� ����� ���â ����� �Ѵ��� �߱��ϱ�");
		var li = document.createElement('li'); // DIV ��ü ����
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
		//alert("�׷�� ����� ���â ����� �׷�� �߱��ϱ�");
		$('#group').append('<li><a href="<%=menubarRoot%>/">�׷���̸�</a></li>');

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
				<li><a href="<%=menubarRoot%>/board/notice/list.jsp">��������</a></li>
				<li><span class="opener">���Ѵ���</span>
					<ul id="study">
						<!-- <li><a onclick="addStudyRoom()">+ �Ѵ���</a></li>  -->
						<!-- �̰� ������ ���â -->
						<li><a onclick="addStudyRoom()" data-toggle="modal"
							data-target="#myModal2">+ �Ѵ���</a></li>
						<!-- �̰� ������ ���â -->
					</ul></li>
				<li><span class="opener">���׷��</span>
					<ul id="group">
						<li><a onclick="addGroupRoom()">+ �׷��</a></li>
						<!-- �̰� ������ ���â -->

					</ul></li>


				<li><span class="opener">������</span>
					<ul id="">
						<li><a href="">��ǻ��</a></li>
						<li><a href="">����Ʈ����</a></li>
						<li><a href="">����</a></li>
					</ul></li>
				<li><a href="<%=menubarRoot%>/hannoonin/hannooninmain.jsp">�Ѵ���</a></li>
				<li><a href="<%=menubarRoot%>/cafe/cafemap_2.jsp">���͵�ī��</a></li>

				<li><a href="#">����������</a></li>
				<li><span class="opener">����</span>
					<ul id="">
						<li><a href="<%=menubarRoot%>/admin?act=list">ȸ������</a></li>
						<li><a href="<%=menubarRoot%>/admin/stat/index.jsp">���</a></li>
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