<%@page import="com.sun.org.apache.bcel.internal.classfile.Attribute"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<%--<% part_name = request.getParameter("");  %> --%>
<!--  �츮�� �ٹ� �� ���� �����г� -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	
<script type="text/javascript">
	$(function() {
		$('#part_name').on('click', function() {
			var addOptionTag = "<option value='1'>1</option>";
			$(this).html(addOptionTag);

		});
	})
	$(function() {
	$('#share_id').on('click', function(){
			var addOptionTag2 = "<option value='1'>1</option>";
			$(this).html(addOptionTag2);
	});
	})

	function modify() {
		document.StudyRoom.action = "<%=root%>/StudyController?act=StudyRoom";
		document.StudyRoom.act.value = "StudyRoom";
		document.StudyRoom.submit();
	}

</script>
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">��</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">���Ѵ��� ����</h4>
				</div>
				<div class="modal-body">
<form name="StudyRoom" method="get" action="">
	
	<table width="780" height="700" cellspacing="4" cellpadding="5">
		<tr>
			<td class="td1">�� �Ѵ����<font color="red">*</font></td>
			<td class="td3"><input type="text" name="studyname" id="studyname" value=""
				size="12"><input type="hidden" name="act"   value=""></td>
		</tr>
		<tr>
			<td class="td2">���̵�(ID)<font color="red">*</font></td>
			<td class="td4">
				<%--������ ���̵� --%>
				<input type="hidden" name="id" id="userid" value="" size="12"
				onkeyup="javascript:idcheck();">
				<div id="idresult"><%=session.getId()%></div>
			</td>
		</tr>
		<tr>
			<td class="td1">������ ���<font color="red">*</font></td>
			<td class="td3">�� ���з�&nbsp;&nbsp; <select name="part_name"
				id="part_name">
					<option value=""><%-- ��Ʈ�ѹ� --%></option>

			</select>
			</td>
		</tr>
		<tr>
			<td class="td1">��������<font color="red">*</font></td>
			<td class="td3">���� ���� &nbsp;&nbsp; <select name="share_id"
				id="share_id">
					<option value=""><%-- ��Ʈ�ѹ� --%></option>

			</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" value="����"
				onclick="javascript:modify();"> &nbsp;&nbsp; <input
				type="reset" value="���"></td>
		</tr>
	</table>
</form>
	</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" >����</button>
				<button type="button" class="btn btn-primary">���</button>
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


<%@ include file="/common/menubar_2.jsp"%>