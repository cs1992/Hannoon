<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="/common/public.jsp"%>
<!-- #### MENU_BAR #### -->
<!-- Sidebar -->
<script>

</script>
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
				<li><span class="opener">내한눈방</span></li>
				<ul>
					<form name="menu" method="get">
						<li><a href="<%=publicRoot%>/StudyController?act=menu"> 새글 작성
								<img src="<%=publicRoot%>/study/img/hyundong/plus.png"
								width="10" >
						</a></li>

						<li><a> 내한눈방</a></li>

					</form>
				</ul>
				<li><a href="elements.html">Elements</a></li>
				<li><span class="opener">Submenu</span>
					<ul>
						<li><span class="opener">Lorem Dolor</span>
							<ul>
								<li><a href="#">a</a></li>
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
				</li>
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
			<section> <header class="major">
			<h2>Ante interdum</h2>
			</header>
			<div class="mini-posts">
				<article> <a href="#" class="image"><img
					src="images/pic07.jpg" alt="" /></a>
				<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
					dolore aliquam.</p>
				</article>
				<article> <a href="#" class="image"><img
					src="images/pic08.jpg" alt="" /></a>
				<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
					dolore aliquam.</p>
				</article>
				<article> <a href="#" class="image"><img
					src="images/pic09.jpg" alt="" /></a>
				<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper
					dolore aliquam.</p>
				</article>
			</div>
			<ul class="actions">
				<li><a href="#" class="button">More</a></li>
			</ul>
			</section>

			<!-- Section -->
			<section> <header class="major">
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