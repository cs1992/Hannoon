<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
#modal_userdetail .modal-dialog{
	width: 70%;
}
.closeButton{
	width: 50px;
	height: 50px;
	font-size: 35px;
}
</style>

<div class="modal fade" id="modal_userdetail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog modal-lg">
   <div class="modal-content">
     <div class="modal-header">
		<button type="button" class="close closeButton" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
		<h2 class="modal-title" id="myModalLabel">Detail Info</h2>
     </div>
     <div class="modal-body">
<!-- 폼 시작 -->
<div class="row" style="float:right;">
	<ul class="actions">
		<li><input type="button" class="special" value="블랙 LIST" onclick=""></li>
		<li><input type="button" class="special" value="강퇴" onclick=""></li>
	</ul>
</div>
<br><br><br>

<div class="table-wrapper">
	<table>
		<thead>
			<th width="10%">아이디</th>
			<th width="1%">|</th>
			<th width="10%">이름</th>
			<th width="1%">|</th>
			<th width="15%">학교</th>
			<th width="1%">|</th>
			<th width="15%">학과</th>
			<th width="1%">|</th>
			<th width="20%">전화번호</th>
			<th width="1%">|</th>
			<th width="20%">이메일</th>
			<th width="1%">|</th>
			<th width="10%">생일</th>
			</tr>
		</thead>
		<tbody>
			<tr class="trhover">
				<td id="modalid"></td>
				<td></td>
				<td id="modalname"></td>
				<td></td>
				<td id="modalschoolname"></td>
				<td></td>
				<td id="modalpartname"></td>
				<td></td>
				<td id="modaltel"></td>
				<td></td>
				<td id="modalemail"></td>
				<td></td>
				<td id="modalbirth"></td>
			</tr>
		</tbody>
	</table>
</div>
<!-- 폼 끝 -->
     </div>
    </div>
  </div>
</div>
