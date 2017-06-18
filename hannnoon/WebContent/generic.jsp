<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>

<!--  우리가 꾸밀 곳 여기 메인패널 -->

<center>
	<h1>GENERIC</h1>


	<h3>Form</h3>

	<form method="post" action="#">
		<div class="row uniform">
			<div class="6u 12u$(xsmall)">
				<input type="text" name="demo-name" id="demo-name" value=""
					placeholder="Name" />
			</div>
			<div class="6u$ 12u$(xsmall)">
				<input type="email" name="demo-email" id="demo-email" value=""
					placeholder="Email" />
			</div>
			<!-- Break -->
			<div class="12u$">
				<div class="select-wrapper">
					<select name="demo-category" id="demo-category">
						<option value="">- Category -</option>
						<option value="1">Manufacturing</option>
						<option value="1">Shipping</option>
						<option value="1">Administration</option>
						<option value="1">Human Resources</option>
					</select>
				</div>
			</div>
			<!-- Break -->
			<div class="4u 12u$(small)">
				<input type="radio" id="demo-priority-low" name="demo-priority"
					checked> <label for="demo-priority-low">Low</label>
			</div>
			<div class="4u 12u$(small)">
				<input type="radio" id="demo-priority-normal" name="demo-priority">
				<label for="demo-priority-normal">Normal</label>
			</div>
			<div class="4u$ 12u$(small)">
				<input type="radio" id="demo-priority-high" name="demo-priority">
				<label for="demo-priority-high">High</label>
			</div>
			<!-- Break -->
			<div class="6u 12u$(small)">
				<input type="checkbox" id="demo-copy" name="demo-copy"> <label
					for="demo-copy">Email me a copy</label>
			</div>
			<div class="6u$ 12u$(small)">
				<input type="checkbox" id="demo-human" name="demo-human" checked>
				<label for="demo-human">I am a human</label>
			</div>
			<!-- Break -->
			<div class="12u$">
				<textarea name="demo-message" id="demo-message"
					placeholder="Enter your message" rows="6"></textarea>
			</div>
			<!-- Break -->
			<div class="12u$">
				<ul class="actions">
					<li><input type="submit" value="지은이한테보내기" class="special" /></li>
					<li><input type="reset" value="지은이때리기" /></li>
				</ul>
			</div>
		</div>
	</form>



	<!-- Table -->
	<h3>Table</h3>

	<h4>Default</h4>
	<div class="table-wrapper">
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Item1</td>
					<td>Ante turpis integer aliquet porttitor.</td>
					<td>29.99</td>
				</tr>
				<tr>
					<td>Item2</td>
					<td>Vis ac commodo adipiscing arcu aliquet.</td>
					<td>19.99</td>
				</tr>
				<tr>
					<td>Item3</td>
					<td>Morbi faucibus arcu accumsan lorem.</td>
					<td>29.99</td>
				</tr>
				<tr>
					<td>Item4</td>
					<td>Vitae integer tempus condimentum.</td>
					<td>19.99</td>
				</tr>
				<tr>
					<td>Item5</td>
					<td>Ante turpis integer aliquet porttitor.</td>
					<td>29.99</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"></td>
					<td>100.00</td>
				</tr>
			</tfoot>
		</table>
	</div>

	<h4>Alternate</h4>
	<div class="table-wrapper">
		<table class="alt">
			<thead>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Item1</td>
					<td>Ante turpis integer aliquet porttitor.</td>
					<td>29.99</td>
				</tr>
				<tr>
					<td>Item2</td>
					<td>Vis ac commodo adipiscing arcu aliquet.</td>
					<td>19.99</td>
				</tr>
				<tr>
					<td>Item3</td>
					<td>Morbi faucibus arcu accumsan lorem.</td>
					<td>29.99</td>
				</tr>
				<tr>
					<td>Item4</td>
					<td>Vitae integer tempus condimentum.</td>
					<td>19.99</td>
				</tr>
				<tr>
					<td>Item5</td>
					<td>Ante turpis integer aliquet porttitor.</td>
					<td>29.99</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2"></td>
					<td>100.00</td>
				</tr>
			</tfoot>
		</table>
	</div>

	</div>
</center>

<!--  메인패널 끝 -->
</div>

<%@ include file="common/menubar_2.jsp"%>
</div>

</body>
</html>