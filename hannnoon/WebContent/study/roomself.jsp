<%@page import="com.sun.org.apache.bcel.internal.classfile.Attribute"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%--<%@ include file="/common/public.jsp" %> --%>
<%@ include file="/common/header.jsp"%>
<%--<% part_name = request.getParameter("");  %> --%>
<!--  우리가 꾸밀 곳 여기 메인패널 -->
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
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">내한눈방 설정</h4>
				</div>
				<div class="modal-body">
<form name="StudyRoom" method="get" action="">
	
	<table width="780" height="700" cellspacing="4" cellpadding="5">
		<tr>
			<td class="td1">내 한눈방명<font color="red">*</font></td>
			<td class="td3"><input type="text" name="studyname" id="studyname" value=""
				size="12"><input type="hidden" name="act"   value=""></td>
		</tr>
		<tr>
			<td class="td2">아이디(ID)<font color="red">*</font></td>
			<td class="td4">
				<%--세션의 아이디 --%>
				<input type="hidden" name="id" id="userid" value="" size="12"
				onkeyup="javascript:idcheck();">
				<div id="idresult"><%=session.getId()%></div>
			</td>
		</tr>
		<tr>
			<td class="td1">공유방 대상<font color="red">*</font></td>
			<td class="td3">한 눈분류&nbsp;&nbsp; <select name="part_name"
				id="part_name">
					<option value=""><%-- 파트넘버 --%></option>

			</select>
			</td>
		</tr>
		<tr>
			<td class="td1">공유범위<font color="red">*</font></td>
			<td class="td3">공유 설정 &nbsp;&nbsp; <select name="share_id"
				id="share_id">
					<option value=""><%-- 파트넘버 --%></option>

			</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="button" value="저장"
				onclick="javascript:modify();"> &nbsp;&nbsp; <input
				type="reset" value="취소"></td>
		</tr>
	</table>
</form>
	</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" >저장</button>
				<button type="button" class="btn btn-primary">취소</button>
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