<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--<%@ include file="/search/testpublic.jsp"%> --%>

<%
String menubarRoot = request.getContextPath();
%>
<script>
	function modiftTitle(seq) {
		$("#nameForm" + seq).css('display', 'block');
	}

	function test() {
		$('#study').append('<li><a href="<%=menubarRoot%>/StudyController?act=menu">내한눈방</a></li>');
	
	}
	
</script>

<script type="text/javascript">
function test2(){
	alert("한눈방 만드는 모달창 띄우기고 한눈방 추기하기");
	$('#study').append('<li><a href="<%=menubarRoot%>/StudyController?act=menu">내한눈방</a></li>');
	
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
										<li><a href="index.html">Homepage</a></li>
										<li><a href="generic.html">Generic</a></li>
										<li><a href="elements.html">Elements</a></li>
										<li>
											<span class="opener">내한눈방</span> 
											<ul id="study">
												<!-- <li><a onclick="test()">+ 한눈방</a></li>  --><!-- 이걸 누르면 모달창 -->
												<li><a onclick="test2()">+ 한눈방</a></li> <!-- 이걸 누르면 모달창 -->
											</ul>
										</li>
										<li><a href="#">Etiam Dolore</a></li>
										<li><a href="#">Adipiscing</a></li>
										<li>
											<span class="opener">Another Submenu</span>
											<ul>
												<li><a href="#">Lorem Dolor</a></li>
												<li><a href="#">Ipsum Adipiscing</a></li>
												<li><a href="#">Tempus Magna</a></li>
												<li><a href="#">Feugiat Veroeros</a></li>
											</ul>
										</li>
										<li><a href="#">Maximus Erat</a></li>
										<li><a href="#">Sapien Mauris</a></li>
										<li><a href="#">Amet Lacinia</a></li>
									</ul>
								</nav>

							

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>

	<!-- Scripts -->
<script src="<%=menubarRoot%>/template/assets/js/jquery.min.js"></script>
<script src="<%=menubarRoot%>/template/assets/js/skel.min.js"></script>
<script src="<%=menubarRoot%>/template/assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="<%=menubarRoot%>/template/assets/js/main.js"></script>

<script src="<%=menubarRoot%>/js/search.js"></script>
	</body>
</html>