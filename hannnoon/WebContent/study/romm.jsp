<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<!--  �츮�� �ٹ� �� ���� �����г� -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script>
	function modify() {
		document.StudyRoom.action = "<%=root%>/StudyController?act=StudyRoom";
		document.StudyRoom.act.value = "StudyRoom";
		document.StudyRoom.submit();
	}
</script>
<center>
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">��</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<!-- Table -->

					<form name="StudyRoom" method="Get" style="margin: 0px">
						<h2 type="hidden" id="subject" name="subject">
						<input type="text" name="studyname" value="�� �Ѵ���">
						<input type="hidden" name="act" value="">
							<input class="button special small" type="button"
								value="�� ��" onclick="javascript:modify();"> 
							
							<!-- �˻������� list�� �ѷ��ֱ⶧���� list�� �� -->

							<input type="text" name="subjectname"  value="" >
						</h2>
					</form>
					<div class="table-wrapper">
						<form>
							<table width="100%">
								<thead>
									<th width="100" bgcolor="lightblue" align="center">����</th>
									<th width="50" bgcolor="lightblue">����</th>
									<th width="30" bgcolor="lightblue" align="center">�ۼ���</th>
									<th width="30" bgcolor="lightblue" align="center">��¥</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>

								</tbody>
							</table>
							<div>
								<h4>Pagination</h4>
								<ul class="pagination">
									<li><span class="button disabled">����</span></li>
									<li><a href="#" class="page active">1</a></li>
									<li><a href="#" class="page">2</a></li>
									<li><a href="#" class="page">3</a></li>
									<li><span>&hellip;</span></li>
									<li><a href="#" class="page">8</a></li>
									<li><a href="#" class="page">9</a></li>
									<li><a href="#" class="page">10</a></li>
									<li><a href="#" class="button">����</a></li>
								</ul>
						</form>
						<ul class="actions small">
							<li><a href="<%=root%>/study/studyroom.jsp"
								class="button special small">�۾���</a></li>
							<li><a href="#" class="button special small">����</a></li>
						</ul>
					</div>
				</div>

				<button type="button" class="btn btn-primary btn-lg"
					data-toggle="modal" data-target="#myModal2">ū ���</button>




				<!-- ū ��� -->


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
	</div>



	</div>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script>
	<!-- ie10-viewport-bug-workaround.js -->
	<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script>
	<!-- holder.js -->
</center>

<!--  �����г� �� -->
<%@ include file="/common/menubar_2.jsp"%>