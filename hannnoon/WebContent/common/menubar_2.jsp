<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--<%@ include file="/search/testpublic.jsp"%> --%>
<%
String menubarRoot = request.getContextPath();
%>
<script>
function modiftTitle(seq){
	$("#nameForm" + seq).css('display', 'block');
}

function test() {
	$('#aaa').append('<a href="<%=menubarRoot%>/StudyController?act=menu">내한눈방</a> ');
}
</script>
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
				<li><a href="index.jsp">공지사항</a></li>

				<li><span class="opener">내한눈방</span>
					<ul>
						<li>
							<a href="#">asdfasdf</a>
							<button onclick="modiftTitle(1);">방명수정</button>
							<form id="nameForm1" name="menu" method="post" style="display:none">
								<input type="text" value="asdfasdf">
								<button>저장</button>
							</form>
						</li>

 						<form name="menu" method="post" id="aaa">
 							<input type="text" value="">
							<!--<a href="<%=menubarRoot%>/StudyController?act=menu&isNew=true"
								onclick="javascript:click();"> 새글 작성 <img
								src="<%=menubarRoot%>/study/img/hyundong/plus.png" width="10"></a>
							<a>내 한눈글</a>-->
						</form>

						<a href="<%=menubarRoot%>/StudyController?act=menu"	onclick="test()"> 새글 작성</a> 
						<a onclick="test()"> 새글 작성</a>
					</ul>
				<li><a href="elements.html">Elements</a></li>
				<li><span class="opener">Submenu</span>
					<ul>
						<li><span class="opener">Lorem Dolor</span>
							<ul>
								<!-- <li><a href="#">a</a></li> -->
								<li><a href="#">b</a></li>
							</ul></li>
						<li><a href="#">Ipsum Adipiscing</a></li>
						<li><a href="#">Tempus Magna</a></li>
						<li><a href="#">Feugiat Veroeros</a></li>
					</ul></li>
				<li><span class="opener">Etiam Dolore</span>
					<ul>
						<li><a href="#">a</a></li>
						<li>b</li>
					</ul></li>
		
				<li><a href="#">Adipiscing</a></li>
				<li><span class="opener">Another Submenu</span>
					<ul>
						<li><a href="#">Lorem Dolor</a></li>
						<li><a href="#">Ipsum Adipiscing</a></li>
						<li><a href="#">Tempus Magna</a></li>
						<li><a href="#">Feugiat Veroeros</a></li>
					</ul></li>
				<li><a href="#">Maximus Erat</a></li>
				<li><a href="#">Sapien Mauris</a></li>
				<li><a href="#">Amet Lacinia</a></li>
			</ul>
		</nav>
<%--
		<!-- Section -->
		<section>
			<header class="major">
				<h2>Ante interdum</h2>
			</header>
			<div class="mini-posts">
				<article>
					<a href="#" class="image"><img src="/template/images/pic07.jpg" alt="" /></a>
					<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
						dolore aliquam.</p>
				</article>
				<article>
					<a href="#" class="image"><img src="/templateimages/pic08.jpg" alt="" /></a>
					<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
						dolore aliquam.</p>
				</article>
				<article>
					<a href="#" class="image"><img src="/templateimages/pic09.jpg" alt="" /></a>
					<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
						dolore aliquam.</p>
				</article>
			</div>
			<ul class="actions">
				<li><a href="#" class="button">More</a></li>
			</ul>
		</section>

		<!-- Section -->
		<section>
			<header class="major">
				<h2>Get in touch</h2>
			</header>
			<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare
				velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed
				aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus
				aliquam.</p>
			<ul class="contact">
				<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
				<li class="fa-phone">(000) 000-0000</li>
				<li class="fa-home">1234 Somewhere Road #8254<br /> Nashville,
					TN 00000-0000
				</li>
			</ul>
		</section>
  --%>
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

<!-- Scripts -->
<script src="<%=menubarRoot%>/template/assets/js/jquery.min.js"></script>
<script src="<%=menubarRoot%>/template/assets/js/skel.min.js"></script>
<script src="<%=menubarRoot%>/template/assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="<%=menubarRoot%>/template/assets/js/main.js"></script>

<script src="<%=menubarRoot%>/js/search.js"></script>


</body>
</html>